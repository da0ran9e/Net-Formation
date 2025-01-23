import networkx as nx
import matplotlib.pyplot as plt

# Create a graph
G = nx.Graph()

# Add nodes
G.add_nodes_from([1, 2, 3])

# Add edges to connect the nodes
G.add_edges_from([(1, 2), (2, 3), (1, 3)])

# Draw the graph
pos = nx.spring_layout(G)  # Layout for positioning the nodes
nx.draw(G, pos, with_labels=True, node_color='lightblue', node_size=1500, font_size=15, font_color='darkblue')

# Show the plot
plt.title("Network Graph with 3 Connected Nodes")
plt.show()
