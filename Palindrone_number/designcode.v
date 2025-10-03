module decimal_palindrome(
    input [15:0] n,            
    output reg palindrome
);
    reg [3:0] digits [0:3];    
    reg [15:0] temp;
    integer i;

    always @(*) begin
        temp = n;
        for (i = 0; i < 4; i = i + 1) begin
            digits[i] = temp % 10;
            temp = temp / 10;
        end

        if ((digits[0] == digits[3]) && (digits[1] == digits[2]))
            palindrome = 1;
        else
            palindrome = 0;
    end
endmodule
