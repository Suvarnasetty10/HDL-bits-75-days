module tb_decimal_palindrome;
    reg [15:0] n;
    wire palindrome;
    decimal_palindrome uut (
        .n(n),
        .palindrome(palindrome)
    );

    initial begin
        n = 16'd1221;  
        #10;
        $display("n=%d, palindrome=%b", n, palindrome);

        n = 16'd1234;  
        #10;
        $display("n=%d, palindrome=%b", n, palindrome);

        n = 16'd121;  
        #10;
        $display("n=%d, palindrome=%b", n, palindrome);

        n = 16'd1001;  
        #10;
        $display("n=%d, palindrome=%b", n, palindrome);

        n = 16'd4567;  
        #10;
        $display("n=%d, palindrome=%b", n, palindrome);

        $stop;   
    end
endmodule
