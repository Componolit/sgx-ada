with Interfaces.C;

package Ocall is
    use type Interfaces.C.char_array;

    procedure Put (Data : String);
    procedure Put_Line (Data : String);

    procedure Ocall_Print_String (Data : Interfaces.C.char_array)
        with Global => null,
             Import => True,
             Convention => C,
             External_Name => "ocall_print_string";

    procedure Puts (Data : Interfaces.C.char_array)
        with Global => null,
             Import => True,
             Convention => C,
             External_Name => "puts";

end Ocall;
