#ifndef _FLOODROUTING_H_
#define _FLOODROUTING_H_

#include "VirtualRouting.h"
#include "FloodRoutingPacket_m.h"

using namespace std;

class FloodRouting: public VirtualRouting {

private:
	std::FILE* log;												/**< @brief Logging file pointer >*/
	std::map<std::string, int> addressTable;					/**< @brief A table, mapping every device's network address in range to its MAC address >*/
	std::map<std::string, std::list<std::string>> routeTable;	/**< @brief The routing table, used only by the sink >*/
	std::map<std::string, int> SEQTable;						/**< @brief A table for keeping SEQ pointers for all devices >*/
	int SEQ = 0;

protected:

	void startup();
	void fromApplicationLayer(cPacket*, const char*);
	void fromMacLayer(cPacket*, int, double, double);
	void finish();
	
};

#endif				//FLOODROUTINGMODULE
