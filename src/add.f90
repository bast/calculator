module add

    use, intrinsic :: iso_c_binding, only: c_int

    implicit none

    public add_integers

    private

contains

    pure integer(c_int) function add_integers(i, j) bind(c)
        ! adds two integers
        integer(c_int), intent(in), value :: i, j
        add_integers = i + j
    end function

end module
