/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _ASIO_
#define _ASIO_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#include <runtime.h>

#ifndef _IEC_CONST
#define _IEC_CONST _WEAK const
#endif

/* Constants */
#ifdef _REPLACE_CONST
 #define asioERR_INTERNAL 30150U
 #define asioERR_NOSUCH_DP 30151U
 #define asio_VALID_FLAG 1U
 #define asio_P_ACT_FLAG 2U
 #define asio_F_ACT_FLAG 4U
 #define asio_UNRES_LINK_FLAG 8U
 #define asio_IO_INPUT_FLAG 16U
 #define asio_IO_OUTPUT_FLAG 32U
 #define asio_IO_SIMULATION_FLAG 64U
 #define asio_UNRES_IO_FLAG 128U
 #define asio_INVERTED_FLAG 64U
#else
 _IEC_CONST unsigned short asioERR_INTERNAL = 30150U;
 _IEC_CONST unsigned short asioERR_NOSUCH_DP = 30151U;
 _IEC_CONST unsigned char asio_VALID_FLAG = 1U;
 _IEC_CONST unsigned char asio_P_ACT_FLAG = 2U;
 _IEC_CONST unsigned char asio_F_ACT_FLAG = 4U;
 _IEC_CONST unsigned char asio_UNRES_LINK_FLAG = 8U;
 _IEC_CONST unsigned char asio_IO_INPUT_FLAG = 16U;
 _IEC_CONST unsigned char asio_IO_OUTPUT_FLAG = 32U;
 _IEC_CONST unsigned char asio_IO_SIMULATION_FLAG = 64U;
 _IEC_CONST unsigned char asio_UNRES_IO_FLAG = 128U;
 _IEC_CONST unsigned char asio_INVERTED_FLAG = 64U;
#endif




/* Datatypes and datatypes of function blocks */
typedef struct AsIODPStatus
{
	/* VAR_INPUT (analog) */
	unsigned long pDatapoint;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned char flags;
	unsigned char datatype;
	unsigned long value;
	unsigned long forceValue;
	unsigned long defaultValue;
	/* VAR (analog) */
	unsigned short i_state;
	unsigned short i_result;
	unsigned long unused;
	/* VAR_INPUT (digital) */
	plcbit enable;
} AsIODPStatus_typ;

typedef struct AsIOSetForceValue
{
	/* VAR_INPUT (analog) */
	unsigned long pDatapoint;
	unsigned long value;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	unsigned short i_state;
	unsigned short i_result;
	unsigned long unused;
	/* VAR_INPUT (digital) */
	plcbit enable;
} AsIOSetForceValue_typ;

typedef struct AsIOEnableForcing
{
	/* VAR_INPUT (analog) */
	unsigned long pDatapoint;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	unsigned short i_state;
	unsigned short i_result;
	unsigned long unused;
	/* VAR_INPUT (digital) */
	plcbit enable;
} AsIOEnableForcing_typ;

typedef struct AsIODisableForcing
{
	/* VAR_INPUT (analog) */
	unsigned long pDatapoint;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	unsigned short i_state;
	unsigned short i_result;
	unsigned long unused;
	/* VAR_INPUT (digital) */
	plcbit enable;
} AsIODisableForcing_typ;

typedef struct AsIOGlobalDisableForcing
{
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	unsigned short i_state;
	unsigned short i_result;
	unsigned long unused;
	/* VAR_INPUT (digital) */
	plcbit enable;
} AsIOGlobalDisableForcing_typ;

typedef struct AsIOListDP
{
	/* VAR_INPUT (analog) */
	unsigned long pLastDatapoint;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long pDatapoint;
	/* VAR (analog) */
	unsigned short i_state;
	unsigned short i_result;
	unsigned long unused;
	unsigned char buffer[128];
	/* VAR_INPUT (digital) */
	plcbit enable;
} AsIOListDP_typ;

typedef struct AsIOPVInfo
{
	/* VAR_INPUT (analog) */
	unsigned long pDatapoint;
	unsigned long index;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long pPvName;
	unsigned long pPvContext;
	unsigned char flags;
	/* VAR (analog) */
	unsigned short i_state;
	unsigned short i_result;
	unsigned char bufferA[128];
	unsigned char bufferB[128];
	/* VAR_INPUT (digital) */
	plcbit enable;
} AsIOPVInfo_typ;



/* Prototyping of functions and function blocks */
void AsIODPStatus(struct AsIODPStatus* inst);
void AsIOSetForceValue(struct AsIOSetForceValue* inst);
void AsIOEnableForcing(struct AsIOEnableForcing* inst);
void AsIODisableForcing(struct AsIODisableForcing* inst);
void AsIOGlobalDisableForcing(struct AsIOGlobalDisableForcing* inst);
void AsIOListDP(struct AsIOListDP* inst);
void AsIOPVInfo(struct AsIOPVInfo* inst);


#ifdef __cplusplus
};
#endif
#endif /* _ASIO_ */

                                                           
