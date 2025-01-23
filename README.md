# Net-Formation

## Problem
1. Understanding the Problem:
Network formation is a crucial operation in WSN (Wireless Sensor Network) deployment.
In our multi-cluster networks, this operation is defined by the following steps:

Physical deployment of the network by dropping Sensor Nodes (SNs) into a Field of Deployment (FoD).
Sink broadcasting, flooding the network with designated Cluster Heads (CHs) location information.
Cluster Head recruitment, where Cluster Heads recruit nodes into their clusters.
In this process, the physical deployment of the nodes can be carried out by mass-dropping SNs from an aircraft into the FoD.

2. Proposing a Solution:
Design a transport layer protocol to manage communication between sensors.
The protocol consists of three phases:
- Network Broadcasting: The Base Station broadcasts a message across the entire network to provide information about designated Cluster Heads.
- Cluster Recruitment: Cluster Heads, after receiving the designation message, broadcast a recruitment message to nearby nodes.
- Cluster Joining: Non-cluster-head nodes, upon receiving the first recruitment message, join the corresponding cluster and send a joining message back to the Cluster Head.
## Protocol
1. Protocol Design:
Packet Transmission Path:
- Broadcast Packet (BCAST): At the start of Phase 1, the Base Station sends a BCAST packet to the nearest nodes. Other nodes, upon receiving the broadcast packet (if they have not already received a similar packet), process the information about Cluster Heads and forward the packet to their neighbors. This process continues until the packet reaches all nodes.
- Recruitment Packet (RECRUIT): When a node is designated as a Cluster Head (after receiving a BCAST packet), it sends a RECRUIT packet to nearby nodes. Other nodes, upon receiving the RECRUIT packet, join the cluster (if they have not already joined another cluster) and forward the RECRUIT packet to other nodes.
- Join Packet (JOIN): When a non-cluster-head node joins a cluster, it sends a JOIN packet back to the previous node. If the packet has not yet reached the Cluster Head, it is forwarded until the Cluster Head receives the join information.
## Castalia
1. Operation:
Detailed explanation of Castalia's functionality will be provided.

2. Deployment Plan:
Implement the protocol using a Routing Layer module in Castalia.
## Simulation
1. Running Simulations:
Details of simulation execution will be outlined.
![sensor_map_animation01](https://github.com/user-attachments/assets/1b351027-1795-41e7-a4a2-d1a115f04c68)

2. Solution Evaluation:
The proposed solution's performance will be evaluated based on simulation results.
![sensor_map_con_01](https://github.com/user-attachments/assets/80aaa4d1-5cec-4bf9-8e50-7d00ac8eaee5)
![sensor_map_con_03](https://github.com/user-attachments/assets/8d1bf153-fda6-489c-b1e4-01545ec1af34)

