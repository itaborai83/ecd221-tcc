import numpy as np
import pickle
import pynndescent

class KnnIndex:
    
    def __init__(self, metric, n_neighbors, random_state):
        self.metric       = metric
        self.n_neighbors  = n_neighbors
        self.random_state = random_state
        self.data         = None
        self.neighbors_of = None
        self.distances_of = None

    def index(self, data):
        knn_index = pynndescent.NNDescent(
            data         = data
        ,   metric       = self.metric
        ,   n_neighbors  = self.n_neighbors
        ,   random_state = self.random_state
        ,   low_memory   = True
        ,   verbose      = True
        ,   compressed   = False # neighbor_graph is deleted when the index is compressed
        )
        neighbors, distances = knn_index.neighbor_graph
        self.data            = data
        self.neighbors_of    = neighbors.astype("int32", copy=False)
        self.distances_of    = distances.astype("float32", copy=False)

    def save(self, filename):
        with open(filename, "wb") as fh:
            pickle.dump(self, fh)
            
    def get_row(self, idx):
        assert self.data is not None
        return self.data[idx]
    
    def get_neighbors(self, idx):
        assert self.data is not None
        neighbors = self.neighbors_of[idx]
        distances = self.distances_of[idx]
        return neighbors, distances
    
    @classmethod
    def load(klass, filename):
        with open(filename, "rb") as fh:
            return pickle.load(fh)
