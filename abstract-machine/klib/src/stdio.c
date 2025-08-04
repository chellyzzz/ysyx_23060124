#include <am.h>
#include <klib.h>
#include <klib-macros.h>
#include <stdarg.h>

#if !defined(__ISA_NATIVE__) || defined(__NATIVE_USE_KLIB__)

#define PRINTF_BUF_SIZE 512

static int int_to_str(char *buf, int value) {
  char tmp[32];
  int is_negative = 0, i = 0;
  if (value < 0) {
    is_negative = 1;
    value = -value;
  }
  do {
    tmp[i++] = '0' + value % 10;
    value /= 10;
  } while (value > 0);
  if (is_negative) tmp[i++] = '-';
  for (int j = 0; j < i; ++j) buf[j] = tmp[i - j - 1];
  buf[i] = '\0';
  return i;
}

static int uint_to_str(char *buf, unsigned int value) {
  char tmp[32];
  int i = 0;
  do {
    tmp[i++] = '0' + value % 10;
    value /= 10;
  } while (value > 0);
  for (int j = 0; j < i; ++j) buf[j] = tmp[i - j - 1];
  buf[i] = '\0';
  return i;
}

static int uint_to_hex(char *buf, unsigned int value) {
  const char *hex = "0123456789abcdef";
  char tmp[32];
  int i = 0;
  do {
    tmp[i++] = hex[value % 16];
    value /= 16;
  } while (value > 0);
  for (int j = 0; j < i; ++j) buf[j] = tmp[i - j - 1];
  buf[i] = '\0';
  return i;
}

int vsnprintf(char *out, size_t n, const char *fmt, va_list ap) {
  size_t cnt = 0;
  char buf[32];

  while (*fmt && cnt < n - 1) {
    if (*fmt != '%') {
      out[cnt++] = *fmt++;
      continue;
    }

    fmt++; // skip '%'
    switch (*fmt) {
      case 'd': {
        int val = va_arg(ap, int);
        int len = int_to_str(buf, val);
        for (int i = 0; i < len && cnt < n - 1; i++) out[cnt++] = buf[i];
        break;
      }
      case 'u': {
        unsigned int val = va_arg(ap, unsigned int);
        int len = uint_to_str(buf, val);
        for (int i = 0; i < len && cnt < n - 1; i++) out[cnt++] = buf[i];
        break;
      }
      case 'x': {
        unsigned int val = va_arg(ap, unsigned int);
        int len = uint_to_hex(buf, val);
        for (int i = 0; i < len && cnt < n - 1; i++) out[cnt++] = buf[i];
        break;
      }
      case 'c': {
        int ch = va_arg(ap, int); // char 会被提升为 int
        out[cnt++] = (char)ch;
        break;
      }
      case 's': {
        const char *str = va_arg(ap, const char *);
        while (*str && cnt < n - 1) out[cnt++] = *str++;
        break;
      }
      case '%': {
        out[cnt++] = '%';
        break;
      }
      default:
        // unsupported, skip
        break;
    }
    fmt++;
  }

  out[cnt] = '\0';
  return cnt;
}

int snprintf(char *out, size_t n, const char *fmt, ...) {
  va_list args;
  va_start(args, fmt);
  int written = vsnprintf(out, n, fmt, args);
  va_end(args);
  return written;
}

int sprintf(char *out, const char *fmt, ...) {
  va_list args;
  va_start(args, fmt);
  int written = vsnprintf(out, PRINTF_BUF_SIZE, fmt, args);
  va_end(args);
  return written;
}

int printf(const char *fmt, ...) {
  va_list args;
  va_start(args, fmt);
  char out[PRINTF_BUF_SIZE];
  int written = vsnprintf(out, PRINTF_BUF_SIZE, fmt, args);
  va_end(args);
  putstr(out);
  return written;
}

#endif
