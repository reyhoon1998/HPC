# 2D ↔ 1D Mapping for Optimized Neighbor Searching

This is part of a project aimed at **optimizing neighbor searches** in a 2D cubic box.  
When working with such a grid, we often need a **mapping from 2D coordinates to a single number** (and vice versa) to efficiently store and access data.  

In this folder, you will find **two Fortran modules**:  

- `TWOtoONE.f90` → converts **2D coordinates to 1D ID**  
- `ONETO2.f90` → converts **1D ID back to 2D coordinates**

On the following, I added the pseudo-code: 

function 2D_to_1D(x, y, box_size):
    id = y * box_size + x
    return id

function 1D_to_2D(id, box_size):
    y = id / box_size
    x = id % box_size
    return x, y
