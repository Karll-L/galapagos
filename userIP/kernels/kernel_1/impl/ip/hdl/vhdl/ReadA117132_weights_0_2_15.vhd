-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA117132_weights_0_2_15_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 10; 
             MEM_SIZE    : integer := 768
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of ReadA117132_weights_0_2_15_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11110110001101001100111100110111", 
    1 => "00110001111100000100000110110000", 
    2 => "00100101000001001111100000100100", 
    3 => "11110101000000010000100111111110", 
    4 => "00000110001011011110110111100011", 
    5 => "11000001000110010000010111100100", 
    6 => "00100010000100011110101100100110", 
    7 => "11010010000110111110000011111000", 
    8 => "11010011111100001011101011110010", 
    9 => "00011111000111100001111100001000", 
    10 => "11101110110010001110111111110010", 
    11 => "00101100111111000000010000110110", 
    12 => "11001011111111110011000011011100", 
    13 => "00110110111011011110101111101001", 
    14 => "00011111001011011110110100010100", 
    15 => "00101001000000000000100000011010", 
    16 => "01001000111110011101001010111101", 
    17 => "00001000111100101111100100010011", 
    18 => "00010111001100111101111111001001", 
    19 => "00000100000111111101111000010011", 
    20 => "11011111000000111111111000001110", 
    21 => "01100001001001011101110100011001", 
    22 => "10110101000001100000001111010100", 
    23 => "00011011111010110000011000010011", 
    24 => "11100110001000001111101100000011", 
    25 => "00000100000100111110101100101000", 
    26 => "00000001111000011110111011110101", 
    27 => "01000011110100100011101111000000", 
    28 => "10000001000010010101110100111010", 
    29 => "00010100001000100001100100000010", 
    30 => "00100000110010010000011011110001", 
    31 => "11111001001101010000101111101010", 
    32 => "00010100111110010001001101011101", 
    33 => "11011110111011110000000011111111", 
    34 => "11100001000110000001010011010101", 
    35 => "00110101000000010010001100110111", 
    36 => "11111010000001001110010100010111", 
    37 => "11110010000000111111110000000100", 
    38 => "11110100111010010011000000000110", 
    39 => "01011111000110011101100011110101", 
    40 => "00101001001001101111010111011000", 
    41 => "00001100111010000000000110110010", 
    42 => "11001001001111000010110111101000", 
    43 => "00010100111001111111010000001010", 
    44 => "00000010000110001111111000000000", 
    45 => "00100110001011111111101000001110", 
    46 => "00110000110011100000111011011001", 
    47 => "11101010000111010001111100001110", 
    48 => "00011111110101111101001011101001", 
    49 => "11111010101000001111000111011110", 
    50 => "00001011111101100000100011010000", 
    51 => "00010101010001010010010111100111", 
    52 => "11111010111110101100100111101001", 
    53 => "00001111000010000001011011100101", 
    54 => "00011100111010010010100100000010", 
    55 => "00001010110100000101010100000111", 
    56 => "10101010010010001110100111010011", 
    57 => "11010110000011011101010101000011", 
    58 => "11010110000111101101100100101101", 
    59 => "00111110111000111100010011100010", 
    60 => "11011110110110011111001011011000", 
    61 => "00000101111000101110000100011001", 
    62 => "00010100110110001101101100000110", 
    63 => "00011010000111010001111110110101", 
    64 => "11100111110100000001100111100011", 
    65 => "00100010000100100010111111111010", 
    66 => "10100010110110000000000011100010", 
    67 => "00101000000010000000001100001100", 
    68 => "11111001110110111110110100100100", 
    69 => "11010101000010111111010100000000", 
    70 => "00000011111100001111100111101000", 
    71 => "00010100110010101110101111101000", 
    72 => "00000110111011101111101011011110", 
    73 => "00010110001001111111011100000000", 
    74 => "11010000110101111111011000100101", 
    75 => "11010111000010000001100000001011", 
    76 => "00000000001010100000011111111100", 
    77 => "11000100000110001111011111100000", 
    78 => "11111101111001011101100011011010", 
    79 => "00011100000001110000101111101010", 
    80 => "00000011000010000000010111010101", 
    81 => "11110010000010111110110111111111", 
    82 => "00010110000011000001011000000111", 
    83 => "11101001001000011111101100100100", 
    84 => "00000100000100010010100111110110", 
    85 => "00000010111111000001100100000010", 
    86 => "00000011111101110001111100100101", 
    87 => "00110100111100011101100011010001", 
    88 => "11110110000000110000000100000010", 
    89 => "11111001000100111110101100101110", 
    90 => "11111000000100110000010100100110", 
    91 => "00101001111101100001100000000100", 
    92 => "10100100111100110001110011011111", 
    93 => "00001110000001010000001111111110", 
    94 => "00010011000111001111100100101001", 
    95 => "00100101000110010000010000100011", 
    96 => "11010010000100011110100101010100", 
    97 => "11111111000000110000001000011110", 
    98 => "00011010000000011110010100100111", 
    99 => "11100011001101000100100111111101", 
    100 => "11001001000000001110101001001001", 
    101 => "00111001110111010001011100000000", 
    102 => "00010010111011101101110100100010", 
    103 => "00001101111001110000111011000110", 
    104 => "11111100000000001100100100000100", 
    105 => "00000010111101100010100111101101", 
    106 => "11101001001010011100110100011001", 
    107 => "11000111110010100000001100100111", 
    108 => "00101000010101111101101000101101", 
    109 => "11001000111111111110111000001111", 
    110 => "00001010111101000000110100000101", 
    111 => "11111111111110000000001000001111", 
    112 => "11101001110000101111001000100101", 
    113 => "11111110010000000001101011101001", 
    114 => "11100000111000001111010111001001", 
    115 => "01011011111011100000001011110000", 
    116 => "11110010111111011110111111101000", 
    117 => "11111111111110100001100111010110", 
    118 => "11100100000000110000100100100101", 
    119 => "00000011000010011111110111011101", 
    120 => "11110111111011001111100100001001", 
    121 => "00000000001011000001001111111000", 
    122 => "11110001000010101110000011101101", 
    123 => "00010010000000010001001100011001", 
    124 => "11100111110100110010001111111000", 
    125 => "11101100111001111111000100010000", 
    126 => "01011100111011011101101111111110", 
    127 => "11000000110010011111011100101111", 
    128 => "00000011110011101101000011100110", 
    129 => "11100110000001000000100100010011", 
    130 => "00100100111010010000100100011110", 
    131 => "00010100001011001101111100101000", 
    132 => "11111110111000110001100000001001", 
    133 => "00001011110010000001001100100111", 
    134 => "00000011111010100000000100110000", 
    135 => "10110111111110001111000100001111", 
    136 => "00011000111100110010000100010101", 
    137 => "00010101111000101011111000111000", 
    138 => "11101000001001010000011111001010", 
    139 => "00011101111111100000110011111001", 
    140 => "11100101110101100000001100001110", 
    141 => "11111000111010111110100000011011", 
    142 => "00010011110110000000001011101010", 
    143 => "11111110111011010000010111111101", 
    144 => "10100100000001000010111111110010", 
    145 => "11110101000011111111100011011111", 
    146 => "11110011101110101101000000000001", 
    147 => "00000100111111011101010111110101", 
    148 => "00001111110000111100101011111100", 
    149 => "00010110010010111101101111001101", 
    150 => "00001111001010000000000011101100", 
    151 => "11011010000000011111111011001001", 
    152 => "11101110111111011110101011111110", 
    153 => "11110000001010001011010111110011", 
    154 => "11010101010000000001001111111101", 
    155 => "11111000111101000011000111101101", 
    156 => "00010110111010110100000011100011", 
    157 => "11101000000111111110100101010011", 
    158 => "00010100001001110000101100010000", 
    159 => "11111000111110001111011011010010", 
    160 => "11011001001001111101100100010100", 
    161 => "11111000000001010100001000011000", 
    162 => "01000100110100101111000011011010", 
    163 => "00100101111001011110011100100011", 
    164 => "11110001111011010011100111101011", 
    165 => "00010110000000001111101100010111", 
    166 => "01001011000001100001011011110010", 
    167 => "00010001010010101110101100111100", 
    168 => "11101001111111110010011111110111", 
    169 => "00001011000101001111001100010100", 
    170 => "11000001110110101100110000011000", 
    171 => "11100010000101100011001100000100", 
    172 => "11100011111101111100010011001011", 
    173 => "00001100111001100001110111101010", 
    174 => "11101001001111101111111000110010", 
    175 => "00111110000010100001011000111010", 
    176 => "11010100000001101100010100011011", 
    177 => "00000000110110100001101111010100", 
    178 => "11100010111011000010001100011010", 
    179 => "00100111000100110000000111110100", 
    180 => "00100111101111001110001011010110", 
    181 => "00111111000001101111001100010001", 
    182 => "00000001001111110010100000000111", 
    183 => "11111000111010110011001111101111", 
    184 => "00010111110111111111101100110100", 
    185 => "11111100000001001111010100100111", 
    186 => "11100000001110010001111100011011", 
    187 => "11111010110000010001011111101110", 
    188 => "11001100001011001110100111101010", 
    189 => "11111000111111001111110011011010", 
    190 => "11101000001011111101100111100010", 
    191 => "00100110000011111111100111110110", 
    192 => "11101100110010000010010010010010", 
    193 => "11100100001000110001100000101001", 
    194 => "00111010111101011110001000010101", 
    195 => "00010010000011111101000011101000", 
    196 => "00101000101110111011011011101011", 
    197 => "11101001111110110001110111110110", 
    198 => "00000111010011100010010100001011", 
    199 => "00110100000111101111000011101110", 
    200 => "11100100111111101101110100001011", 
    201 => "00001110111110111111111111101011", 
    202 => "11100111000101010001110111111101", 
    203 => "00000000111000011111010111001001", 
    204 => "11100111110010100010000011111101", 
    205 => "00001100000111000011001100000001", 
    206 => "11011111000110100001001111111101", 
    207 => "00100000111101000010010011101111", 
    208 => "01001101001000011110100000100111", 
    209 => "00011001111100101101111111111000", 
    210 => "11110111110010101101110011100111", 
    211 => "11110110001100100001101000000000", 
    212 => "11001000111101011111111100001001", 
    213 => "00101010111111010100001000000010", 
    214 => "11010000001011110000000011101111", 
    215 => "11111000001001111110111000101011", 
    216 => "11011100110110000000100111011110", 
    217 => "01000000111111010001011011000010", 
    218 => "00000000000101001101011010111010", 
    219 => "01000000110101100001000111110110", 
    220 => "11001010111000010000111011000000", 
    221 => "00010000000000001111110111001011", 
    222 => "00010010110001011110111011111010", 
    223 => "11110110111110101111110101011011", 
    224 => "10111111000011100010100100000101", 
    225 => "01010000111010010010000000000111", 
    226 => "11100001010001000001010000000100", 
    227 => "00101010000110110000000010111010", 
    228 => "00010110000010110000001011110101", 
    229 => "00001101110110110000000100111111", 
    230 => "00100010111111010001101000011100", 
    231 => "00010000110101110000000000011101", 
    232 => "11000011000011111111111011110110", 
    233 => "00100001000010100001001100001010", 
    234 => "00011001000000100000011011010001", 
    235 => "00000100111101010000100000000110", 
    236 => "00010110110111000000001111110101", 
    237 => "00101011001000001110000111111110", 
    238 => "01001010110100011100110000000001", 
    239 => "00001001000110100000100100110010", 
    240 => "11011111001010010010100100110100", 
    241 => "11111000111111101110001111111000", 
    242 => "00100101110011101110011011110011", 
    243 => "11110101001101011110101011111011", 
    244 => "11100010111000101110101000011000", 
    245 => "00011110000011011101111111011110", 
    246 => "11011001001100010010101000100001", 
    247 => "00111101010000100010010111110000", 
    248 => "00001100001100110010111011010111", 
    249 => "11011110000011100100110111111110", 
    250 => "00001000110011110001011111100011", 
    251 => "00001011110111001100001000000101", 
    252 => "11111100110100101111101111101010", 
    253 => "00100110000000100001011000000101", 
    254 => "11100111010100001100110011100011", 
    255 => "11011010000101011111001111011010", 
    256 => "00110000001001111111101000010010", 
    257 => "00000001111101000001110000001001", 
    258 => "00010010000100010000100100000011", 
    259 => "11110001111100010000000100010100", 
    260 => "00001111111110110000001100010011", 
    261 => "11100111000001100000111011111001", 
    262 => "00000001110100100000011011101000", 
    263 => "00000101000011011110110111011010", 
    264 => "00111000000000001101101000001011", 
    265 => "11011001000000000010001000101011", 
    266 => "11111111111001010000000000000011", 
    267 => "00011010111111011101011000001110", 
    268 => "00010001110111111111101100100010", 
    269 => "00110110111110101101101111111101", 
    270 => "00001011001101100000000100001000", 
    271 => "00010101110111000010001000101000", 
    272 => "00110101001011000010000100001001", 
    273 => "11111100001011000000000100000000", 
    274 => "11101010110110110000011011101100", 
    275 => "00000010000100011011010111010010", 
    276 => "11111111000011010001010000001001", 
    277 => "01000100000010011110101000000101", 
    278 => "11110100111110100000001000010010", 
    279 => "10100101000011011101011100010101", 
    280 => "00010110110100000000011111111101", 
    281 => "01000110010000111101010011110101", 
    282 => "11100010110100000000000011001111", 
    283 => "00010110001011010000001100001101", 
    284 => "00110110000011000001001011010110", 
    285 => "00001111111101101110110000001011", 
    286 => "11001011000111101110001100110001", 
    287 => "11100101001001101111101100000010", 
    288 => "01000001000111010001001111100001", 
    289 => "00100000111010011110110111011100", 
    290 => "11110010111000001101111100000000", 
    291 => "11100100000011001111011100001111", 
    292 => "00111101001001011110110011101110", 
    293 => "00010000111101111110111001000011", 
    294 => "00000001000011111101011100000110", 
    295 => "11111011000000100001011011101100", 
    296 => "00000011001001010001010111111110", 
    297 => "11111011001100011111110101000001", 
    298 => "11101010111011110000001000010001", 
    299 => "11100000000011000000100100000011", 
    300 => "00010100000001010000101111101110", 
    301 => "00101000000100010010010011010011", 
    302 => "11100110110001100000110100101000", 
    303 => "11101011000100101111110000110101", 
    304 => "11111011000001101111011011111101", 
    305 => "00011000111110111110000011100101", 
    306 => "11101000110110100001010000101110", 
    307 => "11110100001011101111101011111000", 
    308 => "11111111000111110000011111011010", 
    309 => "11110011000110011110011011110110", 
    310 => "00001100000011111110010011110100", 
    311 => "11111001000000010001000011010111", 
    312 => "00001000111100011111110100010010", 
    313 => "11111011110000101110100100101101", 
    314 => "11100001000110100000101111111110", 
    315 => "11000110001010100001000111111111", 
    316 => "00111111111110001110111100001001", 
    317 => "00100000111110010001001111101100", 
    318 => "10110101000100111110100111101001", 
    319 => "11110111110010111111010111110101", 
    320 => "01011100111110111110100100010011", 
    321 => "00010011000000101101110111100101", 
    322 => "11101000100010010101010000110010", 
    323 => "11110011000001000010101100001111", 
    324 => "00110101110111111111111011111001", 
    325 => "00000010110000101111101011001110", 
    326 => "00101101000110111110010111100111", 
    327 => "11111100000001111111111111001110", 
    328 => "00100110001101010010011111010010", 
    329 => "11000100110111101101110011110110", 
    330 => "01100011000001011111100011001011", 
    331 => "00010111001001001111001000011100", 
    332 => "11110010111010101111000100001100", 
    333 => "10111001001011100010010111111001", 
    334 => "00111011111101101110110100001011", 
    335 => "00001100000111001111101011101101", 
    336 => "00101110111100111110001011101100", 
    337 => "00011110111100100001001100100011", 
    338 => "00000100000110001111111011011111", 
    339 => "00011111110110000001001100100011", 
    340 => "11010001110110000010111011110111", 
    341 => "00101000110010100000001011101000", 
    342 => "00011011011111100010001100101000", 
    343 => "11101110110111001110001000001000", 
    344 => "11100110000100100000000110110110", 
    345 => "00011011111000110001111011101010", 
    346 => "00011001100000010100001111100100", 
    347 => "11110010000111111110001111101100", 
    348 => "00000011111010000010000000000110", 
    349 => "11110011000011100001101111110100", 
    350 => "00100011111110010001001100010010", 
    351 => "11101000110111000001011111101100", 
    352 => "00010001001101101110111111101001", 
    353 => "11010000101110000000101111110010", 
    354 => "00010001000001100000011010111111", 
    355 => "00001010111000011101110011011111", 
    356 => "00011010111101100001110000010000", 
    357 => "11110001000001100001001000011100", 
    358 => "11001101110100001110111111110000", 
    359 => "11010101001100101111110100111101", 
    360 => "00110001110011110001100000100100", 
    361 => "11001101110001010001101000001101", 
    362 => "11110111000111101110000011101100", 
    363 => "11011011110011000000011100010111", 
    364 => "11101010010010010000000100001011", 
    365 => "00010010010011100010101011100100", 
    366 => "11110101101100111100000011110111", 
    367 => "00011110000010101110100110100110", 
    368 => "11101101000010010101101100000011", 
    369 => "00101111000111111111110111010110", 
    370 => "00000111110100011100111001001100", 
    371 => "10101111111011111101110100010011", 
    372 => "00001000000000111111111100000110", 
    373 => "00001111000000101101111100010110", 
    374 => "00001001001001000000011011010100", 
    375 => "11101101111101000000001000010100", 
    376 => "00011000111111011111000100101100", 
    377 => "11110111110101011111101011101101", 
    378 => "00010111000000101101111111011011", 
    379 => "00010101000010001111110000100100", 
    380 => "01010010111001010000010111001001", 
    381 => "00000100111101110001001100010001", 
    382 => "11110100111110000001110000001110", 
    383 => "00001011110101000011011111111101", 
    384 => "00000101000000011101111111110101", 
    385 => "00100001111110100000100100001110", 
    386 => "11111100000010010010001011101010", 
    387 => "01000101001100010010101111000100", 
    388 => "00011010000001100010000000110011", 
    389 => "11101100000010001111100000011110", 
    390 => "11011011110110110000000011110000", 
    391 => "00001111000000100000110100000100", 
    392 => "00101101111101011100011011111011", 
    393 => "00010001000110001111110111111100", 
    394 => "00110000000001010000001111111101", 
    395 => "00101000110111011101100111101001", 
    396 => "00011001101110011111111011111111", 
    397 => "11111101111101000001000111100001", 
    398 => "00001110001001101111101100011111", 
    399 => "00001010110100010010111111101110", 
    400 => "10010101111001100000000000101011", 
    401 => "00010000000001010001000100010100", 
    402 => "00011100110101000010111000111100", 
    403 => "11001011111001000010011111101111", 
    404 => "00100100111100010001110011010100", 
    405 => "00011000000110000000011100000111", 
    406 => "11101110111111110000000011110110", 
    407 => "00101110110111011100011000000011", 
    408 => "00001001000011011111111001000000", 
    409 => "00010011110100111101101111011100", 
    410 => "01101110000101010001010100101100", 
    411 => "00110000111111111001000100000100", 
    412 => "10101010000101010010001111010010", 
    413 => "00101100101011111111001110111101", 
    414 => "11111110111111001111000100001001", 
    415 => "00001100001001101111110000000101", 
    416 => "00001111000010001111111101001000", 
    417 => "00111011111111010000011100100011", 
    418 => "01010101001100010000110100001001", 
    419 => "11111010111111111111101001000000", 
    420 => "10111011001011000001010000101001", 
    421 => "10111010110100010000000100000010", 
    422 => "00011010001100110000101100001110", 
    423 => "00000110000000111111011100001110", 
    424 => "01001111000011011100111011110010", 
    425 => "00011000000100110000001000011111", 
    426 => "00001101000110010100011011111110", 
    427 => "00111001001001100000011011000001", 
    428 => "00010100000100100000010011010001", 
    429 => "00001111111000111110100011101010", 
    430 => "11011010111100110010010011011010", 
    431 => "11111100111011010010101111101001", 
    432 => "11100110000100110000010100010000", 
    433 => "10110111111001011101110111111000", 
    434 => "00001100001001010000110101000001", 
    435 => "00000110000111001111100001010101", 
    436 => "01001110110001011100000100011101", 
    437 => "11010010000110011110010001000001", 
    438 => "00111010001001111110110000100011", 
    439 => "11001101111010001110000111111011", 
    440 => "11000111001000001111110000111000", 
    441 => "01000011111000100000110011100100", 
    442 => "11011010100111110000000000000010", 
    443 => "00101101000010000001100100111101", 
    444 => "11100000110111110000101000000011", 
    445 => "00101101001111000010001011110000", 
    446 => "11101101000101001111110011011100", 
    447 => "11100110000010000000100111001111", 
    448 => "00000100001101000000110000000001", 
    449 => "11101111000000110000000011111010", 
    450 => "11110001000101110000011011110001", 
    451 => "00100110000100101111000111100101", 
    452 => "11100111111111001110001000100100", 
    453 => "11111101000011001010011101010010", 
    454 => "11111010000010000000011011111010", 
    455 => "11100011111111110000010100000111", 
    456 => "11111010111011010001001100000101", 
    457 => "11111000111000010000100111111101", 
    458 => "00000011111011001111001011111010", 
    459 => "11110001110001010000000000001100", 
    460 => "00001100110111101110110000001001", 
    461 => "00000110000000001111100000100111", 
    462 => "00000011111100101100101011100000", 
    463 => "00101000000111010001001100010111", 
    464 => "11100111000000101110111100100100", 
    465 => "11010000111110011111001100001000", 
    466 => "11100100000000101111010100011000", 
    467 => "00100101001001101111001000101011", 
    468 => "11100101111000010000000011111011", 
    469 => "00011010000011011111000100110000", 
    470 => "11011000111001100000111100010000", 
    471 => "11010111111100110001001000010010", 
    472 => "11011100000110000011110000010110", 
    473 => "00001011111100011011000001001110", 
    474 => "10110001001011010101001000101000", 
    475 => "11011010000111100010010011101000", 
    476 => "11010110111001110000001111101010", 
    477 => "00101001000110001101111111110110", 
    478 => "01000101000000111110010111101111", 
    479 => "11110110111111010001001011111100", 
    480 => "11101101111100111110001011111100", 
    481 => "00011001000100101111101111111100", 
    482 => "11011011111110010000001100000000", 
    483 => "00000010111110100010110011010000", 
    484 => "00010001001001001101000011100111", 
    485 => "11001000111100011111110000000110", 
    486 => "00000111001011000001110100110110", 
    487 => "00000101000101000011001000000111", 
    488 => "00000100000110000000111000011011", 
    489 => "11101000000001010000100011110010", 
    490 => "00100011110000101110010011111011", 
    491 => "11100011110100010010100111000110", 
    492 => "11001110101110100000011111101011", 
    493 => "00110110010000100000011000100000", 
    494 => "00000001000100100000010111101010", 
    495 => "11000101111110011111100100001111", 
    496 => "11011011000111010000001011101110", 
    497 => "00001110111110101111101011010101", 
    498 => "11011111111100111111011011101101", 
    499 => "00000001101111111110000000010000", 
    500 => "00010110111101011110010011110100", 
    501 => "00001100001011001111111100011000", 
    502 => "00000100000100001111111111111000", 
    503 => "00001101111110001111001011111110", 
    504 => "00100101001110010000101100011010", 
    505 => "00000011000010110001001011000011", 
    506 => "00010000000010100010110000110001", 
    507 => "00110100000000010000111111110001", 
    508 => "11101001111010100000110111110011", 
    509 => "11101100000101010000111100000100", 
    510 => "00101101000000101110001100000001", 
    511 => "11100010101010011110100100000100", 
    512 => "00100110001011100001100111110010", 
    513 => "00011001000100111101111100000001", 
    514 => "00100110001011110000110111111100", 
    515 => "00110010111101100010101100110111", 
    516 => "00010101000000111101011011100110", 
    517 => "11100101000001101111011100010101", 
    518 => "11101101111101100000000100001111", 
    519 => "11101010000100000001100100010001", 
    520 => "11011100111011000001100100000010", 
    521 => "11101011000001010010011111000111", 
    522 => "11100000000000110001001000011010", 
    523 => "11100011001001011111010111111100", 
    524 => "11001010111010011111100000000010", 
    525 => "11110111001011101100001011011100", 
    526 => "11110000111100001110101011100100", 
    527 => "00000110000101100010010111100000", 
    528 => "11101011111001111111001110110000", 
    529 => "00011010001100010001000000000011", 
    530 => "11110001010001111110111111001101", 
    531 => "11110100111001111111001101010001", 
    532 => "00010110010000110010010010111111", 
    533 => "00111100110001110101100000010000", 
    534 => "11111110000100110010010000010101", 
    535 => "00001010001110111110100111110101", 
    536 => "11000111111000111111010000111111", 
    537 => "11010011111101101110100111111101", 
    538 => "11111001000111010000101100010010", 
    539 => "00000001111011100010100000001111", 
    540 => "00001011001101100001100000100110", 
    541 => "00011011111110011111001111101001", 
    542 => "11100110001101100010101000011011", 
    543 => "00001011111000001100001000110011", 
    544 => "11000001000001111110111011101010", 
    545 => "11001101110001100001010100111000", 
    546 => "11100111111111010010011011100100", 
    547 => "00001000111011010001111100100101", 
    548 => "11101101000100110000000011011111", 
    549 => "00010000110111110001000000001111", 
    550 => "00000001010000010010011000100111", 
    551 => "11101111111100110000110011001110", 
    552 => "11101010001101110001010100011001", 
    553 => "00010100111111111111010100110010", 
    554 => "11110111001011100001010100100000", 
    555 => "00000000111111110001100000110010", 
    556 => "00011101111000000000000100001011", 
    557 => "11001000110100100010101000000010", 
    558 => "11101011000110010000000011111101", 
    559 => "11101010000011000000100011101101", 
    560 => "00010000110011000000000100010011", 
    561 => "11100010110111001110001011111101", 
    562 => "11100100000100010001010011011001", 
    563 => "00000011110101101111101000011110", 
    564 => "10100010001000010010110011001111", 
    565 => "00010110001111001011110100101110", 
    566 => "01000010000110110000011100000000", 
    567 => "11111010110111101101110001000011", 
    568 => "00011011010000001110011000001010", 
    569 => "11111010000011000001001100000010", 
    570 => "11000110001010010001010011100001", 
    571 => "00001010001000010001001111110111", 
    572 => "00010110001111100000100111010001", 
    573 => "00110000000100101111100011000110", 
    574 => "00001100111100001110010011001011", 
    575 => "00011101111100101111001100101011", 
    576 => "11111011000101001100111000000101", 
    577 => "00011101000011011111101100110001", 
    578 => "00100101111000110000100000000000", 
    579 => "00011011110010001011100111001110", 
    580 => "00001110000001000010010011001101", 
    581 => "11100010010010000001000011011101", 
    582 => "01010010101111110101100000010111", 
    583 => "11110000000010101101110110101100", 
    584 => "11101100000010001110001011100100", 
    585 => "00000101000001110001100100000100", 
    586 => "11101010111111011101011000110011", 
    587 => "11011000000011001111111011111000", 
    588 => "00101100000101110001011100100101", 
    589 => "11101111011000110100001000000001", 
    590 => "11100011000100100000011100010010", 
    591 => "00010100111101011111100000100011", 
    592 => "11101010111011100100101001000011", 
    593 => "00011010000000101101101000000001", 
    594 => "11010010010010100010000111110100", 
    595 => "00110110000111101110000011110110", 
    596 => "00111001111000111011011111011011", 
    597 => "11110011111001010001000111110000", 
    598 => "00011110000110001110100100100010", 
    599 => "11001110000011111101100011101001", 
    600 => "10111001000101001111111011110011", 
    601 => "00011000111010101111000011110000", 
    602 => "11001110110010110001110111011110", 
    603 => "00001100111101111111110000001000", 
    604 => "11011111000001000001010000010100", 
    605 => "11110110110111101110111100001001", 
    606 => "11001001001101000000010100000010", 
    607 => "11100100001001110001000111111110", 
    608 => "11110110111001101101011011001010", 
    609 => "00111000000011000000101100000000", 
    610 => "11101100110111111111001011011111", 
    611 => "11111011010100010100100000011100", 
    612 => "00000010001111011110111011100001", 
    613 => "11000010111100111100110011010101", 
    614 => "00010010111100100000001010111110", 
    615 => "00010010000010110000010111011111", 
    616 => "01001011110000011101111011110010", 
    617 => "11010010110001000000110000011101", 
    618 => "00010000110111111011010000111100", 
    619 => "11100000000101100001000011101011", 
    620 => "11110001001100111101110100010010", 
    621 => "11110000111110001101001100100000", 
    622 => "11111111111110000001010100001110", 
    623 => "00001010001010111101101100001111", 
    624 => "10111010000111000000011111001000", 
    625 => "11111000010010101101001001000010", 
    626 => "00011000000000110010010011110111", 
    627 => "11110011001111100000001111010111", 
    628 => "01010011000101010000110111110100", 
    629 => "11011110000101010100101011110000", 
    630 => "00010001000100100011010100000100", 
    631 => "11111111001100010011110011110101", 
    632 => "11010110101001100101000100100100", 
    633 => "00111111101001001111111100010110", 
    634 => "11010101001000010000000111011111", 
    635 => "11110010000111110011101011100011", 
    636 => "11001010000000000010010011110000", 
    637 => "11100101001010011110101111011101", 
    638 => "00000000010000000000101000100101", 
    639 => "00101010111101011111010000001000", 
    640 => "11111101000110010010101100001111", 
    641 => "11111110111110100001010011101010", 
    642 => "00000101111111100000000100000100", 
    643 => "00000111110100110001001111111011", 
    644 => "00000101001010000011000000000000", 
    645 => "11110001001010101111101100001100", 
    646 => "11101100001010110001001111011011", 
    647 => "11011111111001001111000010101100", 
    648 => "00011101111100111110010111111000", 
    649 => "00101111111000111111000000000100", 
    650 => "00011101111001101111100011111010", 
    651 => "00000100110010100010000011111110", 
    652 => "10111001111100111011101111010100", 
    653 => "00001110111011001111011010100010", 
    654 => "01001100110100010000101011101110", 
    655 => "00000111111101001110010111011010", 
    656 => "11110011111101000010101000001001", 
    657 => "00000000111111000011111000001001", 
    658 => "11100110000011000001001000001110", 
    659 => "00010100111001001101011011100010", 
    660 => "11101010111100110001000011100011", 
    661 => "00001000000101001101111100010100", 
    662 => "00110111000110111101101000100011", 
    663 => "11101101001110001100111111111010", 
    664 => "00110011001101001011000000010111", 
    665 => "10110010000010111101111111111101", 
    666 => "00010011101100110000111011011110", 
    667 => "11110111110011010000101011111100", 
    668 => "00101100000001101101010111101001", 
    669 => "11111111000010101101101100010100", 
    670 => "11111101001011111101011111110101", 
    671 => "10101111000010111110100011100111", 
    672 => "01111010001100110000011111011100", 
    673 => "00001010000101111111011100110101", 
    674 => "00000001000001001110110100000110", 
    675 => "00010100111000111111101111100000", 
    676 => "11100100110101111110010111101010", 
    677 => "00011101111010101110110111100111", 
    678 => "11110011000100001111011011100001", 
    679 => "11100111000100000001101000011101", 
    680 => "00000111000001110010000011110101", 
    681 => "11101011000100001110111100110101", 
    682 => "11100011111101110000011111111111", 
    683 => "11101110110011010000010100001001", 
    684 => "00010101111001000000000011111000", 
    685 => "00011101000011011101100011101100", 
    686 => "00111101001000001111101111011110", 
    687 => "11110100000110100000100100001100", 
    688 => "00101001000010110000011100000010", 
    689 => "11111011111100111100111000011101", 
    690 => "00000100001000001111010111111001", 
    691 => "11110111001000000001011000010000", 
    692 => "11011010111011110000100011110110", 
    693 => "11100001000001110000010000010011", 
    694 => "00011100111101000011110011110011", 
    695 => "11001001000010111101101100001011", 
    696 => "11110001000001001111000011110000", 
    697 => "00001011000010100011000100110111", 
    698 => "00010011111001101110100111100001", 
    699 => "11110100001110011111111011110010", 
    700 => "11101101000110100010011000011110", 
    701 => "11111111111000011111111100010010", 
    702 => "00011111000001110010001100001011", 
    703 => "11110101000100101110111011011111", 
    704 => "01010101101010000010000111010100", 
    705 => "11111010110110011111111010100100", 
    706 => "00100010001011101111100011100001", 
    707 => "11111011000001111111101100001001", 
    708 => "00110100000001010001000111101101", 
    709 => "11100001111100111101100111111001", 
    710 => "01011010001111001101010111110101", 
    711 => "10111110000111101111000011000100", 
    712 => "00010010111111111111111000010001", 
    713 => "11110001111000110100100100000110", 
    714 => "11110100101111110000101111110010", 
    715 => "00110100110101000010011000010101", 
    716 => "00010100001101111110101000000111", 
    717 => "11110001111010000000001011110011", 
    718 => "11100001000000111110110100001010", 
    719 => "00001000010010000001000100011100", 
    720 => "00100100010001110000011111010100", 
    721 => "00001110111111111101110000011011", 
    722 => "11110011111011110010101011111010", 
    723 => "11000101000010111110111011100101", 
    724 => "00000101000011111110110011100001", 
    725 => "11111011001100100010000011000111", 
    726 => "11101011010111110000011100000001", 
    727 => "11111110110101101111001100001010", 
    728 => "00010011000111101011000000001000", 
    729 => "11110011000010000010000011110110", 
    730 => "00010010101011100001101111100011", 
    731 => "01010011111010010001010011101110", 
    732 => "11110011111111010000001011011100", 
    733 => "11111000111011110000011011100001", 
    734 => "00100011111001000010010011000101", 
    735 => "00011011101101111111010010111101", 
    736 => "11001010111000011111010100000000", 
    737 => "11111110111000111100111000100010", 
    738 => "11100110111111011110101100100101", 
    739 => "11111111001011111110000000100011", 
    740 => "00111111110110110000100111110001", 
    741 => "11010001110101011111000000101101", 
    742 => "11110010111110011111110000001010", 
    743 => "11100011000011010011010100011000", 
    744 => "11100010110101010010000000000110", 
    745 => "00011101110101000000000111111001", 
    746 => "00000110111100101101101110111010", 
    747 => "00101011111010000001110100000000", 
    748 => "11110011010001101101111000100000", 
    749 => "11111011000100011111001111111111", 
    750 => "11101111001011000000011100010010", 
    751 => "11110111001001001010000000100011", 
    752 => "11101111111000010000101111110010", 
    753 => "01011010111000101101100100101100", 
    754 => "00111011111110001111111100001010", 
    755 => "11111010000100111100110000101101", 
    756 => "00010001110100100011001000111011", 
    757 => "00010010110101000010001100001010", 
    758 => "11011111111011011101101111111101", 
    759 => "11100010111001000010001000001111", 
    760 => "11001101111011001110110011010011", 
    761 => "00001010000110001100100111110010", 
    762 => "11011101000110001110011011101111", 
    763 => "00000110000001111111010000000011", 
    764 => "11011110111001011111010011100110", 
    765 => "00111100111111110010010000001111", 
    766 => "00011001000011011110010000010111", 
    767 => "11101111001110011111011111011111" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "auto";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "hls_ultra";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity ReadA117132_weights_0_2_15 is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 768;
        AddressWidth : INTEGER := 10);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of ReadA117132_weights_0_2_15 is
    component ReadA117132_weights_0_2_15_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA117132_weights_0_2_15_rom_U :  component ReadA117132_weights_0_2_15_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

