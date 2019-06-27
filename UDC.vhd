library ieee;
use ieee.std_logic_1164.all;

entity UDC is 

port (

-- Entradas: 

		  clock : in std_logic;
		  reset: in std_logic;
		  N: in std_logic;
		  Z: in std_logic;

-- Decoficadores:

		  NOP_in 	: in std_logic;
		  LDA_in 	: in std_logic;
		  STA_in 	: in std_logic;
		  ADD_in 	: in std_logic;
		  AND_in 		: in std_logic;
		  OR_in 	: in std_logic;
		  NOT_in 	: in std_logic;
		  JMP_in 	: in std_logic;
		  JN_in 		: in std_logic;
		  JZ_in 		: in std_logic;
		  HLT_in 	: in std_logic;
		 
		-- (ENTRADAS)
	
-- Saídas da Unidade de Controle (Cargas):

		  CargaAC		: out std_logic;
		  CargaPC		: out std_logic; 
		  CargaREM		: out std_logic; 
		  CargaRDM		: out std_logic; 
		  CargaRI 		: out std_logic; 
		  CargaNZ		: out std_logic; 
	
-- Saídas da Unidade de Controle (Selecionadores e outros):

		  selALU      : out std_logic_vector (2 downto 0); 
		  sel_mux     : out std_logic; 
		  incrementaPC: out std_logic; 
		  LOCK     : out std_logic;
		  RNOTW      : out std_logic 
		  
-- (SAÍDAS)
		 
	);
	
end UDC;

architecture archUDC of UDC is

    component NOP is
        port(
            NOP_IN  : in  std_logic;
            NOP_OUT : out std_logic_vector(11 downto 0)
            );		
    end component;

    component LDA is
        port(
            LDA_IN  : in  std_logic;
            LDA_OUT : out std_logic_vector(11 downto 0)
            );
    end component;

    component ADD is
        port(
            ADD_IN  : in  std_logic;
            ADD_OUT : out std_logic_vector(11 downto 0)
            );
    end component;

    component AND_C is
        port(
            AND_IN  : in  std_logic;
            AND_OUT : out std_logic_vector(11 downto 0)
            );
    end component;

    component OR_C is
        port(
            OR_IN  : in  std_logic;
            OR_OUT : out std_logic_vector(11 downto 0)
            );
    end component;

    component NOT_C is
        port(
            NOT_IN  : in  std_logic;
            NOT_OUT : out std_logic_vector(11 downto 0)
            );
    end component;

    component STA is
        port(
            STA_IN  : in  std_logic;
            STA_OUT : out std_logic_vector(11 downto 0)
            );
    end component;

    component JMP is
        port(
            JMP_IN  : in  std_logic;
            JMP_OUT : out std_logic_vector(11 downto 0)
            );
    end component;

    component Flag_N is
        port(
            FlagN_IN  : in  std_logic;
            FlagN_OUT : out std_logic_vector(11 downto 0)
            );
    end component;
	 
	 component Flag_Z is
        port(
            FlagZ_IN  : in  std_logic;
            FlagZ_OUT : out std_logic_vector(11 downto 0)
            );
    end component;

    signal S_NOP, S_STA, S_LDA, S_ADD, S_OR, S_AND, S_NOT, S_JMP, S_OUT, S_N, S_Z, S_HLT: std_logic_vector(11 downto 0);
	 signal controle: std_logic;

begin
    

    I1 : NOP port map(controle, S_NOP);

    I2 : LDA port map(controle, S_LDA);

    I3 : ADD port map(controle, S_ADD);

    I4 : AND_C port map(controle, S_AND);

    I5 : OR_C port map(controle, S_OR);

    I6 : NOT_C port map(controle, S_NOT);

    I7 : STA port map(controle, S_STA);

    I8 : JMP port map(controle, S_JMP);

    I9 : Flag_N port map(controle, S_N);
	 
	 I10 : Flag_Z port map(controle, S_Z);

	 S_OUT <= S_NOP when S_NOP = '1'  else (others => 'Z');
    S_OUT <= S_STA when S_STA = '1'  else (others => 'Z');
    S_OUT <= S_LDA when S_LDA = '1'  else (others => 'Z');
    S_OUT <= S_ADD when S_ADD = '1'  else (others => 'Z');
    S_OUT <= S_OR  when S_OR = '1'   else (others => 'Z');
    S_OUT <= S_AND when S_AND = '1'  else (others => 'Z');
    S_OUT <= S_NOT when S_NOT = '1'  else (others => 'Z');
    S_OUT <= S_JMP when S_JUMP = '1' else (others => 'Z');

    S_OUT <= S_JMP     when (S_N = '1' and JN_in = '1') else (others => 'Z');
    S_OUT <= S_JMP     when (S_Z = '1' and JZ_i = '1') else (others => 'Z');

	 
    S_OUT <= S_Z when (S_Z = '1' and JN_in = '0') else (others => 'Z');
    S_OUT <= S_N when (S_N= '1' and JZ_in = '0') else (others => 'Z');

    S_OUT <= S_HLT when S_HLT = '1' else (others => 'Z');

    CargaAC <= S_OUT(11);
    selALU (2) <= S_OUT(10);
    selALU (1) <= S_OUT(9);
    selALU (0) <= S_OUT(8);
    incrementaPC    <= S_OUT(7);
    CargaPC  <= S_OUT(6);
    sel_mux <= S_OUT(5);
    CargaREM  <= S_OUT(4);
    CargaRDM <= S_OUT(3);
    LOCK      <= S_OUT(2);
    RNOTW    <= S_OUT(1);
    CargaRI   <= S_OUT(0);

end architecture;


