with Ocall;

package body Ada_Interface is

    procedure Ada_Main is
    begin
        Ocall.Put_Line ("Hello World");
        Ocall.Put ("Enter something: ");
        Ocall.Put_Line ("Got input: " & Ocall.Get_Line);
    end;

end Ada_Interface;
