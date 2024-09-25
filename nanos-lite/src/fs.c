#include <fs.h>
#include <ramdisk.h>

typedef size_t (*ReadFn) (void *buf, size_t offset, size_t len);
typedef size_t (*WriteFn) (const void *buf, size_t offset, size_t len);

typedef struct {
  char *name;
  size_t size;
  size_t disk_offset;
  ReadFn read;
  WriteFn write;
  size_t open_offset;
} Finfo;

enum {FD_STDIN, FD_STDOUT, FD_STDERR, FD_FB};

size_t invalid_read(void *buf, size_t offset, size_t len) {
  panic("should not reach here");
  return 0;
}

size_t invalid_write(const void *buf, size_t offset, size_t len) {
  panic("should not reach here");
  return 0;
}

/* This is the information about all files in disk. */
static Finfo file_table[] __attribute__((used)) = {
  [FD_STDIN]  = {"stdin", 0, 0, invalid_read, invalid_write},
  [FD_STDOUT] = {"stdout", 0, 0, invalid_read, invalid_write},
  [FD_STDERR] = {"stderr", 0, 0, invalid_read, invalid_write},
#include "files.h"
};

void init_fs() {
  // TODO: initialize the size of /dev/fb
}

int fs_open(const char *pathname, int flags, int mode){
  int len = sizeof(file_table)/sizeof(file_table[0]);
  for(int i = 0; i < len; i++){
    if(strcmp(file_table[i].name,pathname)==0){
      file_table[i].open_offset = 0;
      return i;
    }
  }
  panic("File not found");
}

size_t fs_read(int fd, void *buf, size_t len){
  if(file_table[fd].read != NULL){
    return (file_table[fd].read)(buf,0,len);
  }
  else{
    size_t f_size = file_table[fd].size;
    size_t open_offset = file_table[fd].open_offset;
    if(open_offset >= f_size){
      return -1;
    }
    else if(open_offset + len > f_size){
      len = f_size - open_offset;
    }
    ramdisk_read(buf, file_table[fd].disk_offset + open_offset, len);
    file_table[fd].open_offset += len;
    return len;
  }
}

size_t fs_offset(int fd){
  return file_table[fd].disk_offset;
}

size_t fs_write(int fd, const void *buf, size_t len){
  if(file_table[fd].write != NULL){
    return (file_table[fd].write)(buf,0,len);
  }
  else {
    size_t f_size = file_table[fd].size;
    size_t open_offset = file_table[fd].open_offset;
    if(open_offset >= f_size){
      return -1;
    }
    else if(open_offset + len > f_size){
      len = f_size - open_offset;
    }
    ramdisk_write(buf, file_table[fd].disk_offset + open_offset, len);
    file_table[fd].open_offset = open_offset + len;
    return len;
  }
}

size_t fs_lseek(int fd, size_t offset, int whence){
  size_t f_size = file_table[fd].size;
  size_t open_offset = file_table[fd].open_offset;
  switch(whence){
    case SEEK_SET:
      if(offset > f_size){
        return -1;
      }
      file_table[fd].open_offset = offset;
      break;
    case SEEK_CUR:
      if(open_offset + offset > f_size){
        return -1;
      }
      file_table[fd].open_offset = open_offset + offset;
      break;
    case SEEK_END:
      if((signed)offset > 0){
        return -1;
      }
      file_table[fd].open_offset = f_size - offset;
      break;
    default:
      printf("Invalid whence\n");
      return -1;
  }
  return file_table[fd].open_offset;
}

int fs_close(int fd){
  file_table[fd].open_offset = 0;
  return 0;
}

void get_fs_name(int fd){
  printf("File name: %s\n",file_table[fd].name);
}