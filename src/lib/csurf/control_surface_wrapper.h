#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef void *C_ControlSurface;
typedef struct MediaTrack
    MediaTrack; // Forward declaration of MediaTrack as an opaque struct
C_ControlSurface ControlSurface_Create();
void ControlSurface_Destroy(C_ControlSurface instance);
#ifdef __cplusplus
}
#endif
