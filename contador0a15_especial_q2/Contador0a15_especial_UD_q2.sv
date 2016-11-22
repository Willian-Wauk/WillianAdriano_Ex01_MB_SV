/*Contador simples de 4bits crescente de 0 a 15 e decrescente de 15 a 0*/

module Contador_0a15_especial(input logic reset, clock,
							output logic [3:0]saida_contador);
							logic ciclo;/*entradas e saida do contador*/
							
always_ff @(posedge clock or posedge reset)/* Escolhendo troca de cliclo na subida do clock */

	begin
	
	if (reset)/* Condicao de inicio */
		begin
		saida_contador <= 4'd0;
		ciclo <= 0;
		end
		
	else		
		if(ciclo == 0)/* Contador crescente */
			if(saida_contador == 4'd14)
				begin
				saida_contador <= saida_contador + 4'd1;
				ciclo <= 1;
				end
			else
				saida_contador <= saida_contador + 4'd1;
		else/* Contador decrescente */
			if(saida_contador == 4'd1)
				begin
				saida_contador <= saida_contador - 4'd1;
				ciclo <= 0;
				end
			else
				saida_contador <= saida_contador - 4'd1;	
	end
endmodule