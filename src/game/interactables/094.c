#include "global.h"
#include "task.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 unkC;
    /* 0x0D */ u8 unkD;
    /* 0x0E */ u8 unkE;
} IA094;

void Task_Interactable094Main(void);

#if 0
void Task_Interactable094Main(void) {
    IA094 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    Player *p;
    s16 i;

    // left, top, right, bottom, middle
    s16 sp00, sp04, sp08, sp0C, sl;

    s16 worldX = TO_WORLD_POS(ia->base.spriteX, ia->base.regionX);
    s16 worldY = TO_WORLD_POS(me->y, ia->base.regionY);
    sp04 = worldY + me->d.sData[1] * TILE_WIDTH;
    sp0C = sp04   + me->d.uData[3] * TILE_WIDTH;
    sp00 = worldX + me->d.sData[0] * TILE_WIDTH;
    sp08 = sp00   + me->d.uData[2] * TILE_WIDTH;
    sl   = sp00   + me->d.uData[2] * (TILE_WIDTH / 2);

    if(!IsPointInScreenRect(worldX, worldY)) {
        p = &gPlayers[gStageData.charId];

        // TODO: WTF!? Seems to be a bug, done properly further down.
        if(p->callback != (void*)0x85) {
            sub_8004F10(p, 290);
        }

        me->x = ia->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    } else {
        // _08040378
        for(i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            if (i == 0) {
                p = &gPlayers[gStageData.charId];
            } else {
                p = &gPlayers[p->charFlags.partnerIndex];
            }
            
            if (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2
                || p->charFlags.someIndex == 4) {
                if (sub_802C0D4(p)) {
                    sub_8004F10(p, SE_607);
                } else if ((worldX > sp00) && (worldX < sp08) && (worldY > sp04)
                    && (worldY < sp0C)) {
                    if (((sl - 4) <= worldY) && ((sl + 4) >= worldY)) {

                    }
                }
            }
        }
    }
}
#endif

void CreateEntity_Interactable094(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t
        = TaskCreate(Task_Interactable094Main, sizeof(IA094), 0x2100, 0, NULL);
    IA094 *ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.spriteX = me->x;
    ia->base.spriteY = id;
    ia->unkC = (me->d.uData[4] > 0) ? 1 : 0;
    ia->unkD = 0;
    ia->unkE = 0;

    SET_MAP_ENTITY_INITIALIZED(me);
}