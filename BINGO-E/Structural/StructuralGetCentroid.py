class StructuralGetCentroid():
    def __init__(self, structural_features):
        self.filename = structural_features.filename
        self.block_info = structural_features.block_info
        self.function_info = structural_features.function_info
        #
        # Check: Each function has centroids of w, x, y, z
        #
        for func in self.function_info:
            func['w'] = 0
            func['x'] = 0
            func['y'] = 0
            func['z'] = 0
            func['w2'] = 0
            func['x2'] = 0
            func['y2'] = 0
            func['z2'] = 0
    
    def displayFunction(self):
        for i in self.function_info:
            print(i)

    def getCentroid(self):
        #
        # Check: Compute the centroid of every function
        # Complexity: O(n), n = number of nodes of a program
        #
        program = open(self.filename, 'rb').read()
        for i in range(len(self.function_info)):
            for j in range(self.function_info[i]['function_range'][0], self.function_info[i]['function_range'][1]):
                self.computeCentroid(i, self.block_info[j])

    def computeCentroid(self, index, node2):
        #
        # Check: Compute the centroid of the two nodes
        # Complexity: O(1)
        #
        node1 = self.function_info[index]
        self.function_info[index]['w'] = node1['w'] + node2['w']
        self.function_info[index]['x'] = (node1['w'] * node1['x'] + node2['w'] * node2['x']) / self.function_info[index]['w']
        self.function_info[index]['y'] = (node1['w'] * node1['y'] + node2['w'] * node2['y']) / self.function_info[index]['w']
        self.function_info[index]['z'] = (node1['w'] * node1['z'] + node2['w'] * node2['z']) / self.function_info[index]['w']
        self.function_info[index]['w2'] = node1['w2'] + node2['w']
        self.function_info[index]['x2'] = (node1['w2'] * node1['x2'] + node2['w2'] * node2['x']) / self.function_info[index]['w2']
        self.function_info[index]['y2'] = (node1['w2'] * node1['y2'] + node2['w2'] * node2['y']) / self.function_info[index]['w2']
        self.function_info[index]['z2'] = (node1['w2'] * node1['z2'] + node2['w2'] * node2['z']) / self.function_info[index]['w2']
