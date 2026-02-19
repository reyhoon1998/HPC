# 2D ↔ 1D Mapping for Optimized Neighbor Searching

This is part of a project aimed at **optimizing neighbor searches** in a 2D cubic box.  
When working with such a grid, we often need a **mapping from 2D coordinates to a single number** (and vice versa) to efficiently store and access data.  

In this folder, you will find **two Fortran modules**:  

- `twoD2oneD.f90` → converts **2D coordinates to 1D ID**  
- `oneD2twoD.f90` → converts **1D ID back to 2D coordinates**

On the following, I added the pseudo-code: 

## Pseudo-code for 2D → 1D

```text
2D_to_1D function:
    Input: x, y         // coordinates in 2D box
           box_size     
    Output: id         

    Step 1: id = y * box_size + x
    Step 2: return id



1D_to_2D function:
Input: id        
       box_size     
Output: x, y       

Step 1: y = integer division of id by box_size
Step 2: x = remainder of id divided by box_size
Step 3: return x, y
