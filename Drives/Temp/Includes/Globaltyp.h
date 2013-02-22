/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1361549150_1_
#define _BUR_1361549150_1_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct tDrive
{	signed long ZeroOffset;
	signed long SetPos;
	unsigned short Ctrl;
	signed char Mode;
	plcbit Brake;
	signed long GetPos;
	unsigned short Status;
	unsigned char Case;
} tDrive;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Global.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1361549150_1_ */

