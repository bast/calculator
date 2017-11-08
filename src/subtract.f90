module subtract

    use, intrinsic :: iso_c_binding, only: c_int

    implicit none

    public subtract_integers

    private

contains

    pure integer(c_int) function subtract_integers(i, j) bind(c)
        ! subtracts two integers
        integer(c_int), intent(in), value :: i, j
        subtract_integers = i - j
    end function

end module
