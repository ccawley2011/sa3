#ifndef GUARD_SA3_MODULE_UNCLEAR_H
#define GUARD_SA3_MODULE_UNCLEAR_H

#include "types.h"
#include "game/player.h"

/* The variable and function declarations in here do not yet have a corresponding module
 */

bool32 sub_8001E58(void);

void sub_8003DF0(u16 song);
void sub_8003E28(u16 song);
bool32 sub_8004E98(Player *p, u16 song);

void sub_80236C8(void *, u8 p1, void *);
bool32 sub_8023734(void *chaoEwramData);
void sub_80239A8(void *chaoEwramData);
void sub_80299FC(void);
void sub_8029A18(u16 songId);

#endif // GUARD_SA3_MODULE_UNCLEAR_H