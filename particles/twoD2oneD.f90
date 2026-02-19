! Each row in the 2D box contains 'box_size' cells.
! Multiplying the row index 'y' by 'box_size' shifts to the correct row,
! and adding 'x' moves to the correct column, giving a unique 1D ID.

module griding
contains

    function TWOtoONE(x, y, box_size) result(id)
        implicit none
        integer, intent(in) :: x, y, box_size
        integer :: id

        id = y * box_size + x
    end function TWOtoONE

end module griding
