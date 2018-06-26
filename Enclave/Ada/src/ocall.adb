package body Ocall is

   procedure Put (Data : String) is
   begin
       Ocall_Print_String (Interfaces.C.To_C (Item => Data, Append_Nul => True));
   end Put;

   procedure Put_Line (Data : String) is
   begin
       Puts (Interfaces.C.To_C (Item => Data, Append_Nul => True));
   end Put_Line;

end Ocall;
