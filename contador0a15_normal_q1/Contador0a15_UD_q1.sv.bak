module Contador4bits_UD_q2(input logic reset, clock,
							output logic [3:0]saida);
							logic ciclo;
							
always_ff @(posedge clock or posedge reset)

	begin
	
	if (reset)
		begin
		saida <= 4'd0;
		ciclo <= 0;
		end
		
	else		
		if(ciclo == 0)
			if(saida == 4'd15)
				ciclo <= 1;
			else
				saida <= saida + 4'd1;
		else
			if(saida == 4'd0)
				ciclo <= 0;
			else
				saida <= saida - 4'd1;	
	end
endmodule