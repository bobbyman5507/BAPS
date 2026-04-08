library ieee;
use ieee.std_logic_1164.all;

entity alu is
    generic (
        N : integer := 16;
        M : integer := 4
    );
    port (
        A     : in  std_logic_vector(N-1 downto 0);
        B     : in  std_logic_vector(N-1 downto 0);
        ALUOp : in  std_logic_vector(3 downto 0);
        Y     : out std_logic_vector(N-1 downto 0)
    );
end alu;

architecture Structural of alu is

    signal add_out : std_logic_vector(N-1 downto 0);
    signal sub_out : std_logic_vector(N-1 downto 0);
    signal and_out : std_logic_vector(N-1 downto 0);
    signal or_out  : std_logic_vector(N-1 downto 0);
    signal xor_out : std_logic_vector(N-1 downto 0);
    signal not_out : std_logic_vector(N-1 downto 0);
    signal sll_out : std_logic_vector(N-1 downto 0);
    signal srl_out : std_logic_vector(N-1 downto 0);

begin

    -- ADD
    U_ADD : entity work.AddSub
        generic map (
            N => N
        )
        port map (
            A   => A,
            B   => B,
            sel => '0',
            Y   => add_out
        );

    -- SUB
    U_SUB : entity work.AddSub
        generic map (
            N => N
        )
        port map (
            A   => A,
            B   => B,
            sel => '1',
            Y   => sub_out
        );

    -- AND
    U_AND : entity work.and
        generic map (
            N => N
        )
        port map (
            A => A,
            B => B,
            Y => and_out
        );

    -- OR
    U_OR : entity work.or
        generic map (
            N => N
        )
        port map (
            A => A,
            B => B,
            Y => or_out
        );

    -- XOR
    U_XOR : entity work.xor
        generic map (
            N => N
        )
        port map (
            A => A,
            B => B,
            Y => xor_out
        );

    -- NOT
    U_NOT : entity work.notN
        generic map (
            N => N
        )
        port map (
            A => A,
            Y => not_out
        );

    -- SLL
    U_SLL : entity work.sll
        generic map (
            N => N,
            M => M
        )
        port map (
            A     => A,
            shamt => B(M-1 downto 0),
            Y     => sll_out
        );

    -- SRL
    U_SRL : entity work.srl
        generic map (
            N => N,
            M => M
        )
        port map (
            A     => A,
            shamt => B(M-1 downto 0),
            Y     => srl_out
        );

    -- ALU output mux
    process(ALUOp, add_out, sub_out, and_out, or_out, xor_out, not_out, sll_out, srl_out)
    begin
        case ALUOp is
            when "0000" =>
                Y <= add_out;   -- ADD
            when "0001" =>
                Y <= sub_out;   -- SUB
            when "0010" =>
                Y <= and_out;   -- AND
            when "0011" =>
                Y <= or_out;    -- OR
            when "0100" =>
                Y <= xor_out;   -- XOR
            when "0101" =>
                Y <= not_out;   -- NOT
            when "0110" =>
                Y <= sll_out;   -- SLL
            when "0111" =>
                Y <= srl_out;   -- SRL
            when others =>
                Y <= (others => '0');
        end case;
    end process;

end Structural;