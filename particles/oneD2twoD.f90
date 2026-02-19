! Dividing the 1D ID by 'box_size' gives the row index 'y',
! because each row contains 'box_size' cells.
! The remainder (mod) gives the column index 'x', recovering the original coordinates.

module oneto2
contains

    subroutine ONETO2(id, box_size, x, y)
        implicit none
        integer, intent(in)  :: id     
        integer, intent(in)  :: box_size 
        integer, intent(out) :: x, y     

        y = id / box_size   
        x = mod(id, box_size)  
    end subroutine ONETO2

end module oneto2
