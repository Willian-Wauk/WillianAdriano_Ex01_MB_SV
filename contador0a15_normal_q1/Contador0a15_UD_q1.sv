/* Contador simples de 4bits crescente de 0 a 15 e decrescente de 15 a 0 */

module Contador0a15(input logic reset, clock,
							output logic [3:0]saida_contador);
							logic ciclo;/* entradas e saidas */
							
always_ff @(posedge clock or posedge reset)/* Escolhendo troca de cliclo na subida do clock */

	begin
	
	if (reset)/* Condicao de inicio */
		begin
		saida_contador <= 4'd0;
		ciclo <= 0;
		end
		
	else		
		if(ciclo == 0)/* Contador crescente */
			if(saida_contador == 4'd15)
				ciclo <= 1;
			else
				saida_contador <= saida_contador + 4'd1;
		else /* Contador decrescente */
			if(saida_contador == 4'd0)
				ciclo <= 0;
			else
				saida_contador <= saida_contador - 4'd1;	
	end
endmodule