
module griding
contains

    function TWOtoONE(x, y, box_size) result(id)
        implicit none
        integer, intent(in) :: x, y, box_size
        integer :: id

        id = y * box_size + x
    end function TWOtoONE

end module griding