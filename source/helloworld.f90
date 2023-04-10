module hello_world
    implicit none

contains

    subroutine say_hello()
        ! Prints a hello message to the console.
        print *, "Hello, world!"
    end subroutine say_hello

end module hello_world
