#include <NDL.h>
#include <SDL.h>
#include <assert.h>

#define keyname(k) #k,

static const char *keyname[] = {
  "NONE",
  _KEYS(keyname)
};

static unsigned char keystate[sizeof(keyname) / sizeof(keyname[0])] = {};

int SDL_PushEvent(SDL_Event *ev) {
  return 0;
}

int SDL_PollEvent(SDL_Event *ev) {
  return 0;
}

// int SDL_WaitEvent(SDL_Event *event) {

//   return 1;
// }

int SDL_WaitEvent(SDL_Event *event) {
  char buf[64];
  char *cur = buf;
  int i;

  while (!NDL_PollEvent(buf, 64));

  if(buf[1] == 'd') {event->type = SDL_KEYDOWN; event->key.type = SDL_KEYDOWN;}
  else if(buf[1] == 'u') {event->type = SDL_KEYUP; event->key.type = SDL_KEYUP;}
  else {
    exit(0);
  }

  for(i = 3;buf[i] != '\n';i++);
  buf[i] = '\0';
  for(i = 0;keyname[i] != NULL;i++){
    if(strcmp(&buf[3], keyname[i]) == 0){
      event->key.keysym.sym = (uint8_t)i;
      keystate[i] = (buf[1] == 'd');
      break;
    }
  }

  assert(keyname[i] != NULL);  
  return 1;
}

int SDL_PeepEvents(SDL_Event *ev, int numevents, int action, uint32_t mask) {
  return 0;
}

uint8_t* SDL_GetKeyState(int *numkeys) {
  return NULL;
}
