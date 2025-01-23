//****************************************************************************
//*  Copyright: National ICT Australia,  2007 - 2011                         *
//*  Developed at the ATP lab, Networked Systems research theme              *
//*  Author(s): Athanassios Boulis, Yuriy Tselishchev                        *
//*  This file is distributed under the terms in the attached LICENSE file.  *
//*  If you do not find this file, copies can be found by writing to:        *
//*                                                                          *
//*      NICTA, Locked Bag 9013, Alexandria, NSW 1435, Australia             *
//*      Attention:  License Inquiry.                                        *
//*                                                                          *  
//****************************************************************************/

cplusplus {{
#include "node/communication/routing/RoutingPacket_m.h"
}}

class RoutingPacket;

enum NetFormationRoutingPacket_Type
{
	BCAST  = 1;			
	ACK = 2;
	RECRUIT = 3;
	JOIN = 4;
};

packet NetFormationRoutingPacket extends RoutingPacket {
	int NetFormationRoutingPacketKind enum (NetFormationRoutingPacketDef);	// 1 byte
	int sinkID;			// 2 bytes
	int senderLevel;	// 1 byte

	int messageID;
	string clusterAdd[10];
	string origin;
	string source;
	string destination;
	
}

