with Interfaces.C;

package Ocall is
    use type Interfaces.C.char_array;

    procedure Put (Data : String);
    procedure Put_Line (Data : String);
    function Get_Line return String;

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

    procedure Ocall_Get_String (Data   : in out Interfaces.C.char_array;
                                Length :        Interfaces.C.int)
        with Global => null,
             Import => True,
             Convention => C,
             External_Name => "ocall_get_string";

end Ocall;
