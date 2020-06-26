module tb(
);
reg clk, reset;

	RISC_V_Processor rvp (

		.clk(clk),
		.reset(reset)
	);
	
initial
    clk = 1'b1;

    
	
  always
  begin
  #5 clk = ~clk;
  end
  
initial
begin
  reset = 1'b0;
  #7
  reset = 1'b1;
  #14
  reset = 1'b0;
end
 
  
endmodule


// initial 
    // begin
        // clk = 0;
        // reset = 1;
        // #10 
        // reset = 0;

 

    // end
    
    
// always 
    // #15 clk = ~clk;
    
// endmodule