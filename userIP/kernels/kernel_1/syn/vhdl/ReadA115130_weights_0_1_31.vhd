-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA115130_weights_0_1_31_rom is 
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


architecture rtl of ReadA115130_weights_0_1_31_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01001010001010010001111100110000", 
    1 => "00100110000001110011000110101001", 
    2 => "00101011110000011101111100011011", 
    3 => "00111110000010010000111011110010", 
    4 => "11111110110110001111111000001110", 
    5 => "11110101000000001110100000011101", 
    6 => "11001101000001010010001011111111", 
    7 => "00001101000100010000101111110110", 
    8 => "11110011111011011101111110110001", 
    9 => "11111001000011011101011000101010", 
    10 => "00001110000101101111101011111001", 
    11 => "00101011000010100000011111110111", 
    12 => "00000010101100110001000000100001", 
    13 => "00000000000101010000111111110001", 
    14 => "11100010001101011011110100101110", 
    15 => "00000001111100011110010111000110", 
    16 => "01000011001010111011100000011111", 
    17 => "11111100110100100001110100010001", 
    18 => "01001110000110011101101111100000", 
    19 => "00000100111001111101111100001010", 
    20 => "11100010001000100001010011110000", 
    21 => "00000010000000011110001100000000", 
    22 => "00011001111101011110010100010100", 
    23 => "00010000001000000100010100010010", 
    24 => "11110100001111110100111011101000", 
    25 => "00001011111111001110110111100101", 
    26 => "00000101000110110001011011101110", 
    27 => "11000000011101001111101000111001", 
    28 => "00001000000011000011100011101011", 
    29 => "11111101111110000011010011101110", 
    30 => "00110110001000110010011000000000", 
    31 => "11010000110110111100101111111001", 
    32 => "00000101000110111111001111100001", 
    33 => "00010000111101111111000000000111", 
    34 => "00111011000101011111010011111001", 
    35 => "11101101000011101011100011111011", 
    36 => "00110101000000111110101100100100", 
    37 => "00100011111100110000011011010010", 
    38 => "11010000010001100010100011101100", 
    39 => "11111100000000010010101000010100", 
    40 => "00100000000101010000011011100010", 
    41 => "00011000000001110000000100101001", 
    42 => "11010010111100110000101000101101", 
    43 => "00011000001010101111000110111010", 
    44 => "00010011111111100010111011010010", 
    45 => "00111010000001000011001011001110", 
    46 => "00010101001101001110010100100010", 
    47 => "00110011111010111110000100001001", 
    48 => "11101110111100110001001100110101", 
    49 => "00001100000010011110110011011011", 
    50 => "00011101000110001111001000001000", 
    51 => "00111101000101000000101001011100", 
    52 => "11101011111100111011000011100110", 
    53 => "00100100110001100101001111111011", 
    54 => "11111010111011110001100111110101", 
    55 => "00010100000100100000011000000010", 
    56 => "00111011101101010010011011100000", 
    57 => "11100010111010001111000100010111", 
    58 => "11110100110110100101111111100110", 
    59 => "01000010111011000000010010110011", 
    60 => "00110110111001101101011011111011", 
    61 => "11101000111111100000100111110011", 
    62 => "10010110110011110001000001010000", 
    63 => "11010110111100110000000100010010", 
    64 => "11101011001011000010000100000101", 
    65 => "00000011111100000010001011101110", 
    66 => "11110011000111001110001111111000", 
    67 => "11101000111111100011010111100010", 
    68 => "00011000110000111110101100010000", 
    69 => "10110010000011110001001000110011", 
    70 => "11101010111111110000010011101111", 
    71 => "00010000000100001111000111101110", 
    72 => "11101011110101001010000100100011", 
    73 => "11111001110101101110110000100110", 
    74 => "00100000111111001110011000010110", 
    75 => "00000101111011100000001111110000", 
    76 => "11101110000110111100011100001000", 
    77 => "00010111000110011101110011111111", 
    78 => "00101100000011110010100111111110", 
    79 => "11110100111101011110010100001111", 
    80 => "00111010001010111101000011111011", 
    81 => "11111001101111000101001100011100", 
    82 => "00111110000101001110110010111110", 
    83 => "11101010001111100000001011011010", 
    84 => "11001010000100000010010100101101", 
    85 => "11100000000010011011011101000110", 
    86 => "11111001001110100001100011100001", 
    87 => "11111100111000100011011111111100", 
    88 => "01001000001001010000011111101100", 
    89 => "00001010111011111110001111100010", 
    90 => "11100010110110010000000110111101", 
    91 => "00101011001110111100011110101001", 
    92 => "00101010000111101111010111011100", 
    93 => "11110011111010111111100111111100", 
    94 => "11110101100000010000000011111110", 
    95 => "01010011100110001110000111111100", 
    96 => "11100011000000110001010011111110", 
    97 => "11110111111101111111011100110100", 
    98 => "11110100111111000001001100010100", 
    99 => "00001101111000100000111100000010", 
    100 => "00100100001000000100111000001010", 
    101 => "00011010000011101110000111101111", 
    102 => "00000001000100111111001111010110", 
    103 => "11101010000001000011100110111100", 
    104 => "00110010111011100000010100100100", 
    105 => "10111001000001101111001111100111", 
    106 => "00000100000000100000011011111000", 
    107 => "00010000111000110000001111111011", 
    108 => "00000001000000100000000011110000", 
    109 => "00000110001000101011111011100011", 
    110 => "00101011110010010001011000010000", 
    111 => "11110101111010111101110000000100", 
    112 => "00010001100110010001001100000011", 
    113 => "00110101000101001111100000101111", 
    114 => "00011010111110010000110100000010", 
    115 => "11110101111110011101100000000111", 
    116 => "11101100111010010100000111110010", 
    117 => "11101111000101101110100100010100", 
    118 => "11011100111000000010110111110001", 
    119 => "11000100111111111010001011011111", 
    120 => "11100001111110010010100000100110", 
    121 => "10100001111011110001101011011111", 
    122 => "11111100110110000000001000101100", 
    123 => "11110101000101011110111011110101", 
    124 => "00101011010010000010001111100111", 
    125 => "11110001010001110001111011111001", 
    126 => "11110101111011100000001111000010", 
    127 => "11011001000010111111101000011110", 
    128 => "11010011000010111011111000011010", 
    129 => "11100110110111100100011100000000", 
    130 => "11111001000000101111101011111000", 
    131 => "00001001000101110000011111110001", 
    132 => "11110110111011010001000111100111", 
    133 => "01010100000000010000010111111100", 
    134 => "00000100000010001111111111100011", 
    135 => "10111110000101001111000100001111", 
    136 => "00110111000101011110100100001101", 
    137 => "11110001110100111101111000011011", 
    138 => "00000110000001001110100100100001", 
    139 => "00101000111101110011000000001110", 
    140 => "11111000111111010011100111101010", 
    141 => "11101100000011011100111111111101", 
    142 => "00100110111010101111001100101001", 
    143 => "00011100111101110001101011011111", 
    144 => "00111100101111110001111100001000", 
    145 => "10110101111010000010100111101001", 
    146 => "00000000110010110000101000000010", 
    147 => "11011000000011000000011100100001", 
    148 => "11101101001010000001001000000111", 
    149 => "11111000111001101110000010111110", 
    150 => "00101010101011110011001011101001", 
    151 => "11010110001000100000001000100101", 
    152 => "00001010000100100011001011100010", 
    153 => "11111010110110101101001001001010", 
    154 => "00001101001101111111110000000001", 
    155 => "11111001111010001111011110111010", 
    156 => "11101110001000011111010111101110", 
    157 => "00001001111110000010001100001001", 
    158 => "00100110111101110000110111110100", 
    159 => "11010101111110110000110111111000", 
    160 => "11110011000100001101001100111100", 
    161 => "00011010111001011110100111110000", 
    162 => "00010010000110010101101100001001", 
    163 => "00011010111010100011001100110001", 
    164 => "11110100000011001111110000010110", 
    165 => "00010110111110001011100000001111", 
    166 => "11101100000111010001101011110000", 
    167 => "11110000000101001110011100000011", 
    168 => "00001011111001010000110100010111", 
    169 => "11110111111011011110011000011111", 
    170 => "00110010111101100010000000010111", 
    171 => "11110110000000000001010011110110", 
    172 => "00001100001000110001111111111111", 
    173 => "00001000111010000000101011011001", 
    174 => "11110110000000111110011011101110", 
    175 => "01001010000011000011011011101110", 
    176 => "11011011000111111101111100100110", 
    177 => "11000110000011100000010011001101", 
    178 => "00001001000010100001010101001000", 
    179 => "11110110000101100001110000101010", 
    180 => "11111110110000000010101111111100", 
    181 => "11010111111101111011101000010101", 
    182 => "00000101111101110011000111011110", 
    183 => "11100100000111110010111011001101", 
    184 => "11110101111110110000000000001110", 
    185 => "00010101111011010010111100101001", 
    186 => "11010000001000010001010011011011", 
    187 => "11100001111110011111101111001001", 
    188 => "00011010111110010000000000000111", 
    189 => "11111011111101110001110110110011", 
    190 => "00000110111100110010110100011010", 
    191 => "00000101110100000000010100001011", 
    192 => "00011011001101110001100100001101", 
    193 => "11010101001111101110101011110001", 
    194 => "01110011111000001111100100000111", 
    195 => "11011101000010100000100111010001", 
    196 => "00110000000111110001010000000001", 
    197 => "11110100111101000000010111110011", 
    198 => "00100101101110001111111111111111", 
    199 => "11110100111101100000000000001000", 
    200 => "01010101000010010000000111100000", 
    201 => "11011001001000010100000100000010", 
    202 => "10111111111101110000010000101101", 
    203 => "11011010101010111111101011010001", 
    204 => "00001011000101000010010111111110", 
    205 => "00111101111010110001011100101101", 
    206 => "11111100111001010001111000100111", 
    207 => "00011111000101111111100000100000", 
    208 => "00011100111100001011110100000101", 
    209 => "00110010000000010001011000110010", 
    210 => "11111111000001110000001000100101", 
    211 => "00001001111100000000000111111010", 
    212 => "11100001011001001111001011110101", 
    213 => "11011000110010100011000111101011", 
    214 => "11111100110111011111100011101101", 
    215 => "00011000000100110011010011100000", 
    216 => "00100000001110001111001100011011", 
    217 => "11111001110101101011110000010111", 
    218 => "00000111000101111101100000011011", 
    219 => "11001011111010000010010000001111", 
    220 => "11100001111110010001110100101001", 
    221 => "10111100111101110100001111011011", 
    222 => "00000000110101001111000100000101", 
    223 => "00010000111101011110011111110000", 
    224 => "11110011111111001111000100000100", 
    225 => "01000001001001101110100100010101", 
    226 => "11111011111110111110001000001001", 
    227 => "01011101111110000010011110101100", 
    228 => "10010111000101101100111100110000", 
    229 => "11100001000011100010101000011001", 
    230 => "00010001000111101111000100000111", 
    231 => "00101000111010000011110100011000", 
    232 => "11111100000101101110000110111100", 
    233 => "00010101111001101111000111101111", 
    234 => "00100010111010110000110100000111", 
    235 => "00000111001111000001100111111111", 
    236 => "11110111011001001111000100100111", 
    237 => "00001011111101100000110111111001", 
    238 => "11000101111110111110110100111011", 
    239 => "00000010000000001111010000001111", 
    240 => "00001100000100001111111111101111", 
    241 => "01000010110110100001110000010001", 
    242 => "00010000000000010001101111101000", 
    243 => "11100110000000011111110111101000", 
    244 => "00001000111100010011000111110111", 
    245 => "11111011000001101111110011100111", 
    246 => "11110010111001100010010011110110", 
    247 => "11011101111111010010000000001110", 
    248 => "11111110110100101101010011111010", 
    249 => "11000111000011000000000000001110", 
    250 => "00000100111000110010011011000110", 
    251 => "01100010001000000000111100101110", 
    252 => "00100100111010000001010011110010", 
    253 => "11110001111001000000101111110010", 
    254 => "00000100010000010000100011100011", 
    255 => "10110001111011101111000000011101", 
    256 => "00000100111011011111100111101110", 
    257 => "11110001111110110010100011110101", 
    258 => "11011010110001011111011100001001", 
    259 => "00010101111110011110010000011000", 
    260 => "00000101111101000001001100001000", 
    261 => "11110011000110010000111011101010", 
    262 => "11110100111000010000111100010000", 
    263 => "00001101000101011111000111111111", 
    264 => "00010011111111100000011100011011", 
    265 => "11011101000100001110001011101100", 
    266 => "11111011110100110001000000001010", 
    267 => "11101100001001001110100000100010", 
    268 => "00101001001110100001110111101010", 
    269 => "11111110000001100000001000001110", 
    270 => "11110111111010100000100100111011", 
    271 => "00111111111101101111001000001111", 
    272 => "11011100111100000001000000000001", 
    273 => "11111110000000011110111011111101", 
    274 => "11011101111010101111000111111000", 
    275 => "00001000000011110001010011110111", 
    276 => "11111000111111110001001011110010", 
    277 => "00011111000000011110110100010110", 
    278 => "00111010111010111111111011111100", 
    279 => "00010000000000011110101000100111", 
    280 => "00001010000101111110100100010010", 
    281 => "11101110000001000001001011011110", 
    282 => "00001101110100110001101100010110", 
    283 => "00001011111000010001111111111000", 
    284 => "11011011111001011111010000010100", 
    285 => "11010111000001001110010011011100", 
    286 => "00000110000100011100101111110011", 
    287 => "00001101000010010000110011101111", 
    288 => "11111101110101101101001000011010", 
    289 => "00100011111111110000010111110001", 
    290 => "11010111000101101100100100010111", 
    291 => "11111001111011101111100011110101", 
    292 => "01000011001010100000000011111110", 
    293 => "11010011000111011110110000111001", 
    294 => "00100101111100100001110011100001", 
    295 => "00000001000011110001001100001111", 
    296 => "11111110000000111111011000010100", 
    297 => "11011100000011111111111011011101", 
    298 => "00010011000011101111111100010001", 
    299 => "00100000000101011111010011111101", 
    300 => "11011011110011100010001011010110", 
    301 => "11111000111010000001101101011111", 
    302 => "00111011111010111110100100001110", 
    303 => "00011110111110000010100011100101", 
    304 => "01000101111111000011101100000101", 
    305 => "00011000000010011111111000001000", 
    306 => "11111110111001010001110111100010", 
    307 => "11110010111001111110010011101111", 
    308 => "00000111111100111101110111110100", 
    309 => "11101001000000110001001010101100", 
    310 => "11100001111111000000111011011100", 
    311 => "00010101111011000010101111101011", 
    312 => "11101111010011111110011111111111", 
    313 => "11100100001001101100111011110001", 
    314 => "11111011001010101111111011111100", 
    315 => "11011001000111110010010100011001", 
    316 => "00100111111100110001101111000111", 
    317 => "00000001111000011110010111110000", 
    318 => "11100110001110010001100000010101", 
    319 => "00010100110110101110010011101001", 
    320 => "00001011010000101110011100000011", 
    321 => "00010000111011011110101011010010", 
    322 => "00001000111011001110110000011011", 
    323 => "00000001110010011101110111111010", 
    324 => "11111010110010011101010111110101", 
    325 => "00100011000101010001010000000100", 
    326 => "11111011000010111110111000010000", 
    327 => "11100101000101001101110100000110", 
    328 => "11111010111010100000011100100011", 
    329 => "11111111110101110101100000001110", 
    330 => "11101000111100000001110000000001", 
    331 => "00011110111101001111010000000001", 
    332 => "00001010001010011111000011110001", 
    333 => "11010101000101001101011111011101", 
    334 => "00000100000000111111011111100001", 
    335 => "11000000000111001101001110011001", 
    336 => "11100011000001111110000100011100", 
    337 => "11111011000001110000001000100001", 
    338 => "00100010111110100000111100001010", 
    339 => "11111100000011101110111011010111", 
    340 => "00010011000010001110010111101000", 
    341 => "11100100110011011101110000001000", 
    342 => "11010010001111110010110011100011", 
    343 => "00000100111110011110100011101000", 
    344 => "11001111111111111111111111111100", 
    345 => "11011011001000111111011111100000", 
    346 => "00000011110111100011011111110110", 
    347 => "00101000110100110101101100001101", 
    348 => "00010000000100001100011111100011", 
    349 => "11100001111101111111111011100001", 
    350 => "11100100000110000011110111111000", 
    351 => "11010101111100100101001100001011", 
    352 => "11101010000001100101101000000100", 
    353 => "00001101001110101110010011110001", 
    354 => "00101010000100000001001100010001", 
    355 => "11111101111111110000101111110011", 
    356 => "10101001111000010001000011100001", 
    357 => "00100100000111100010101011101001", 
    358 => "11110010000101111111110000110111", 
    359 => "00010011111011011101100000011000", 
    360 => "11110010111111001110100110110111", 
    361 => "00011011000101000000111111110011", 
    362 => "00001111111101010010010011111000", 
    363 => "00111000000011100000100111111110", 
    364 => "11110100110100100001011011110111", 
    365 => "00001100001011110101111100000001", 
    366 => "00001000110101010001111111100100", 
    367 => "00010110111000101110010100010001", 
    368 => "00101001000100101111111100100100", 
    369 => "11111110001000110000010111101101", 
    370 => "10110110000010111101000000001111", 
    371 => "00010100001000001100101011001100", 
    372 => "00110101110110010001010000011010", 
    373 => "11010110110111000010001011110101", 
    374 => "00110110001000001110101000010000", 
    375 => "00010101000001110001001000010101", 
    376 => "11101100111111011110100000001110", 
    377 => "00010100000000010000000111110110", 
    378 => "00000110110010011110111111101100", 
    379 => "00110011000000010001101110101110", 
    380 => "00011011000001011111110101000011", 
    381 => "00100100111011111111100000001110", 
    382 => "00110101010000111101101100001001", 
    383 => "00000000000010001100100100001110", 
    384 => "10001100001111111100101101010000", 
    385 => "11110100110011011101111111001100", 
    386 => "00100100000111011101100111100011", 
    387 => "11110100000100011111000111111001", 
    388 => "10110110000100100001000111011111", 
    389 => "00100100001000110000000100011010", 
    390 => "11100011001011001110001011000111", 
    391 => "00000110001000001110100010110110", 
    392 => "01110011000000010001010101000011", 
    393 => "00111111110101101111100111110010", 
    394 => "00100100101110111100101000001011", 
    395 => "00010101110110110010000000010101", 
    396 => "00000100001010011111001111100100", 
    397 => "00101100000001110000010011100100", 
    398 => "00001101111111010001101000000101", 
    399 => "00001110111111000000100100001111", 
    400 => "11100001001011011111100100001000", 
    401 => "00101111111110100001100111100111", 
    402 => "10101001010000100010011111110010", 
    403 => "11111000000011111111010100010000", 
    404 => "00011111000000010010100000101100", 
    405 => "11101001111001101111010100101011", 
    406 => "11110000111110110000011100010010", 
    407 => "00001110000011011111110100000101", 
    408 => "00111001111111110010100011011001", 
    409 => "00000101110011110000101111111101", 
    410 => "11110110111000000010001000000010", 
    411 => "00001111001010111111100111111111", 
    412 => "11111110111000010000111011110101", 
    413 => "00010101000111100000010100000000", 
    414 => "00001110000001110011001110100101", 
    415 => "11101100000001001111001100101000", 
    416 => "00100110111001110000101111101100", 
    417 => "00011000000001110000100100000100", 
    418 => "11101101111101010000001110110010", 
    419 => "00100000111000100000111111010110", 
    420 => "11010111000100001010010100001101", 
    421 => "00011100000101000001001011001101", 
    422 => "11111101000100110010001100101101", 
    423 => "11011111111100000011000000010011", 
    424 => "00101111011000010011110000010111", 
    425 => "11001101101111111101000010001001", 
    426 => "11010000010000011101110111110110", 
    427 => "11101000001100100001011111101011", 
    428 => "11110011000011110001001000101001", 
    429 => "10111111000010110000101011101110", 
    430 => "11011010111001010011000111001001", 
    431 => "11110001011010100000011101001010", 
    432 => "11100000001011101101011111110110", 
    433 => "11111110111001010001001101001101", 
    434 => "00100010111110010010000100011011", 
    435 => "00100111001101011111001011010100", 
    436 => "11001101000101101110111100101010", 
    437 => "11110000000100010000010011110100", 
    438 => "11100100111101110010100000100001", 
    439 => "00001010111110101110100011100100", 
    440 => "00010001000101011111011100001010", 
    441 => "11011100001000001100110111010111", 
    442 => "10110110000000101110001100000010", 
    443 => "00000000000110111101111011100000", 
    444 => "11110100110101001110001100110110", 
    445 => "00001101111011010000110100010110", 
    446 => "00010101000101010000111111001111", 
    447 => "11011110000000111111010000100111", 
    448 => "11101101001000110000001011111010", 
    449 => "11110000111011111111010000011100", 
    450 => "00001000000000110001010011110111", 
    451 => "11111011111001110001011111101111", 
    452 => "11111011110010111100100111101010", 
    453 => "11101001000101110001010100000000", 
    454 => "11100011111100011111010111111001", 
    455 => "00011110110001110010001011011110", 
    456 => "00001100110110001110111011110110", 
    457 => "00101101111110111101011000010110", 
    458 => "00010111001000000000100111111000", 
    459 => "00010100111001001111010000000111", 
    460 => "11100100111111000010011100011101", 
    461 => "00001010111111000000100011011111", 
    462 => "11010100001011100000011000000100", 
    463 => "00100100111010011111010100011110", 
    464 => "00000100111101100010000011101101", 
    465 => "11101110000101110001010000100101", 
    466 => "11100011110011101110110000001100", 
    467 => "00000111001011000001101111111000", 
    468 => "00001001001000011111001100001100", 
    469 => "11111100000101010001001011101100", 
    470 => "11000110111000001110111100001011", 
    471 => "00011110111010011111010111001010", 
    472 => "00010010111000111101010111111000", 
    473 => "11110001101101001111100001001011", 
    474 => "00000010111010110001000111111110", 
    475 => "11110111111100001111000111111010", 
    476 => "00001001111111100000101011110010", 
    477 => "00100110111110110011101000101101", 
    478 => "00101110111000001101110100001010", 
    479 => "00011101111101100000000111111001", 
    480 => "11100010111111111110110000110100", 
    481 => "00000010111100000000101100000101", 
    482 => "11110100000010011111100100010101", 
    483 => "11100000000110111110101111111101", 
    484 => "00001011000010100010111000100000", 
    485 => "11110010000011101110111100100110", 
    486 => "11100001110100101111100011011101", 
    487 => "00000010000100011110011000010111", 
    488 => "00000001001001011101011011111011", 
    489 => "11100011000100001110110011110000", 
    490 => "11111000111011001110110111111000", 
    491 => "11100011000011111111011000011000", 
    492 => "11101011111100100010000000000100", 
    493 => "11111101111000001110010100000110", 
    494 => "00000010000010010010001011101100", 
    495 => "00000010111100000010010011101101", 
    496 => "00010011111111000000111011101110", 
    497 => "11111011000001010000111100000101", 
    498 => "11101010001000010000000000001001", 
    499 => "11100100001010100000111010010111", 
    500 => "00100000000010100000110111110001", 
    501 => "11101011000001101101111000000101", 
    502 => "11011010011011010100001000011111", 
    503 => "11100100110110011110111100011101", 
    504 => "11111111000011100000010111101010", 
    505 => "11101111111100101101110100011010", 
    506 => "11110011111010010000010111011110", 
    507 => "00000010000000101111101011111110", 
    508 => "11110101000011100011011100001100", 
    509 => "11111110000000011111101100011001", 
    510 => "01010100111001010000010000001000", 
    511 => "00000111000011111100111111001000", 
    512 => "00110110111010001101100000000110", 
    513 => "00110000111110100010111011001111", 
    514 => "00000101001110100001000100100000", 
    515 => "00010001000110101111011000101011", 
    516 => "11010100001101100001010011101000", 
    517 => "00100101000100110000110111110001", 
    518 => "11010111000011110001111111010111", 
    519 => "00011111111101100000111011111101", 
    520 => "00110011111010011110010000110011", 
    521 => "00101011111001111101110000001011", 
    522 => "00110010000001111111000000000100", 
    523 => "11101101000011101110010111001010", 
    524 => "01010001111111111011110100010001", 
    525 => "01001101110100101110011100111101", 
    526 => "00000111111011010001001000001010", 
    527 => "00000011000110000001111000000111", 
    528 => "00010110111000110100010011111011", 
    529 => "00100110000010101110111011110101", 
    530 => "00011001010010111111110011011111", 
    531 => "00011111110111110011001111110000", 
    532 => "00110111111111000000001100011100", 
    533 => "11001101000100011111100100011101", 
    534 => "00000011000001001111001011110110", 
    535 => "00001000000011010000001100001011", 
    536 => "11111111111000011111011000000001", 
    537 => "00001000000010000001001100000101", 
    538 => "11110011000010010000010011110000", 
    539 => "11010111000110000010111100110010", 
    540 => "01000100110010011111001011111001", 
    541 => "00001011111010011110001111010001", 
    542 => "00101010110101010010010011110000", 
    543 => "00001000000001010001001011101010", 
    544 => "11110110111110010001001100000100", 
    545 => "00001110111101100010000000001010", 
    546 => "11111000111110010001110011110010", 
    547 => "00011010001100100010001100010001", 
    548 => "11010000000011000010011111111101", 
    549 => "00010001000010010100100000100111", 
    550 => "00010100000101101110011000101001", 
    551 => "00000011111100010001101100101000", 
    552 => "00000110000011011110011100010000", 
    553 => "00111001110001011111010000001100", 
    554 => "00011100000011100001100000011011", 
    555 => "00011100111100001110110000000110", 
    556 => "00100111101111000000001100000110", 
    557 => "11001101000100110000100011011110", 
    558 => "00100101000000100010101011101000", 
    559 => "11001000000000001110110100111100", 
    560 => "00011000001100011101110100000111", 
    561 => "11110000000010111110100000001110", 
    562 => "00010001000010110000100011100111", 
    563 => "11100100000101000001100100011101", 
    564 => "00001111111000011110110111101111", 
    565 => "00011011000010000001010000001111", 
    566 => "00011010110100100000000000001000", 
    567 => "11011111111101001011111011101110", 
    568 => "00001001111101010001111011100111", 
    569 => "00010010110000000011100011010011", 
    570 => "11011011111000001100101100000101", 
    571 => "11110111000011011110110100011100", 
    572 => "00010001111011111111101100100000", 
    573 => "00001010111111101100110100100010", 
    574 => "11100110110011110001010000010001", 
    575 => "00010001000101101110110100101101", 
    576 => "00000010111001111101101111110010", 
    577 => "11110001111110001111010100100100", 
    578 => "00100101110110010010101011011110", 
    579 => "00000110000110010100110100100000", 
    580 => "11011010000110001111110111110110", 
    581 => "00001000000101000001011111110110", 
    582 => "00011111000000100100000100010010", 
    583 => "00010111111011001110011100000100", 
    584 => "11011000011100011111011010110001", 
    585 => "11111101111010101100001011111000", 
    586 => "11011010000000011110101000010001", 
    587 => "00000011001001100010010100010000", 
    588 => "01101011000011111111010100010011", 
    589 => "01001011001000001010101000000000", 
    590 => "11010001110110110011110111111001", 
    591 => "00001110000001101110011011101101", 
    592 => "01000010001000000011110100000100", 
    593 => "00111101110100101101010100001101", 
    594 => "00010101000110101110111111001101", 
    595 => "01000101000001001110111111000111", 
    596 => "01011011000001010100000111000101", 
    597 => "10110100001001010000001100010111", 
    598 => "00000100111110011100011000001000", 
    599 => "11111001010001111110110000100100", 
    600 => "11110101000000100000100100000100", 
    601 => "00001000000000111111110000010001", 
    602 => "00100011010000001101000000001101", 
    603 => "11100110111110000001001111001000", 
    604 => "11110111111111100010100000010010", 
    605 => "00100001110011001100110101001110", 
    606 => "00001000010000001110100110101111", 
    607 => "00000111111001100001000011110010", 
    608 => "01010111111110000000100111100011", 
    609 => "00000100110001111100111000010101", 
    610 => "00010101000011010001010111110000", 
    611 => "11011000000010000010001100101100", 
    612 => "11100001000000010000001100001110", 
    613 => "00001000111010010001010011000101", 
    614 => "11100011000110100000001000011100", 
    615 => "11010111110011011110111001101001", 
    616 => "00101101111101111111010000000101", 
    617 => "00101000001011011111000011101111", 
    618 => "11100001111100100100101110111110", 
    619 => "11001011000000111110100111101100", 
    620 => "00110101101101001100111011111100", 
    621 => "11111101001001100010000000001101", 
    622 => "11011111111110001111111100001010", 
    623 => "11010100110001001100111000101110", 
    624 => "11100011001010111101011111110011", 
    625 => "00010001111010000111010000000111", 
    626 => "11000111001100001110100010111101", 
    627 => "00101111110000101011100010111011", 
    628 => "11010000000100100000110111111001", 
    629 => "11110101000101001110100100000010", 
    630 => "11110100000100011111101011111111", 
    631 => "00000110110111111111011111101011", 
    632 => "11001110001000110000000000000011", 
    633 => "00111010011010111100000111101101", 
    634 => "01000000000000110000100000100011", 
    635 => "00110010110001010010011111110111", 
    636 => "11010011000010101101001111010101", 
    637 => "11000011110011001011101011011000", 
    638 => "11110110111011100010011100001011", 
    639 => "00001001111000111111000011101100", 
    640 => "10110101010100010010110100001010", 
    641 => "00000010000001001111001011110011", 
    642 => "00010101111111011111011100001000", 
    643 => "11011101111111100000011100000000", 
    644 => "00000100001110000010110111011010", 
    645 => "00001011000011110001010011011000", 
    646 => "11011011001101011111011000000111", 
    647 => "11000101111111011101100111011001", 
    648 => "11110101000110100100000011101010", 
    649 => "00011000111101100010000011110010", 
    650 => "11001001000110000000011000000101", 
    651 => "00100111001010111100100000000101", 
    652 => "11110110111111110000000001000101", 
    653 => "00000100000001001111111111110100", 
    654 => "00001001000000011111100111110011", 
    655 => "00001000111111010000110100000100", 
    656 => "00001001000001011110000000010100", 
    657 => "00001100000101100000011011111001", 
    658 => "11011000000011001110011111001101", 
    659 => "00001001111110100000100100110000", 
    660 => "00101111111010111101111011101011", 
    661 => "11110111110101111111011011111001", 
    662 => "01100100111001101110101111110010", 
    663 => "11101001000000011110100100000001", 
    664 => "00001001001000110001000000100001", 
    665 => "11101101111010011111110000100100", 
    666 => "00010011000011100011000111110110", 
    667 => "11111001000010100000101011111000", 
    668 => "11000111001000001111100011101110", 
    669 => "00011000111001100000101000001000", 
    670 => "00001010001111011111011111110010", 
    671 => "00000101111010110000001000110111", 
    672 => "00010110000001110001001000110101", 
    673 => "11101100111000011111110000001110", 
    674 => "11110111111000010001000011100110", 
    675 => "00010100111101000000110100101000", 
    676 => "11100000111110000001101100000100", 
    677 => "11100110000101100011000011010100", 
    678 => "00010011111110110101001111100111", 
    679 => "11110100111000011101100000000101", 
    680 => "00010111000110011100001111100010", 
    681 => "00100010000101011111000011101000", 
    682 => "11101000101111011101010010111101", 
    683 => "00101000111000000010010000001000", 
    684 => "00100001111100011110011011011010", 
    685 => "11011100111111011111110100000010", 
    686 => "11101010001010011111011100000010", 
    687 => "11101010111000100000010100011010", 
    688 => "11111010000011111111100100000111", 
    689 => "00000110000010000010110100010001", 
    690 => "00001110000011001111111011111100", 
    691 => "00010001111101101111100011011111", 
    692 => "11111010111110110101110100111111", 
    693 => "11111100110010101101001111111101", 
    694 => "11110111110110001111001111101101", 
    695 => "11010001000011000000000000010001", 
    696 => "00000101111001101101011111110001", 
    697 => "11110101111110101111001000000110", 
    698 => "11011010000010010001100000001100", 
    699 => "00101000000001110010000111000010", 
    700 => "11001011111010100011011100011011", 
    701 => "11111111000000001101010110101101", 
    702 => "11101010000010000000010000010111", 
    703 => "00010111000011101100101011100100", 
    704 => "00101111100111100010011101000111", 
    705 => "11100110000011010000010000010001", 
    706 => "00011111111111100010110000100000", 
    707 => "00000101111110000001100000000001", 
    708 => "00011111000000110010101100011011", 
    709 => "11110000000101011110011011111110", 
    710 => "11100110000010100010001111011011", 
    711 => "11110111111110111110100000001111", 
    712 => "11100111110110111110110100001100", 
    713 => "11000110000001001111111100100010", 
    714 => "00001001110011000000111111011010", 
    715 => "00101011000011111010001100011010", 
    716 => "00010100111000100000011100101011", 
    717 => "01000100111100001011011100001001", 
    718 => "00010110001100011110000111100101", 
    719 => "00010100000100010001010000000001", 
    720 => "01000010010100101110110111110001", 
    721 => "11100010000101010000011000011000", 
    722 => "00001110000001000000011011110011", 
    723 => "11101101111110011111010000001111", 
    724 => "00001111110101101110011000100100", 
    725 => "00010101110100000000001011100011", 
    726 => "00111101111101010000101100111010", 
    727 => "00011101000010100001111100010000", 
    728 => "00100111110001001011010011111001", 
    729 => "11101011000000111110011100000011", 
    730 => "11111101111111101110001100101100", 
    731 => "11011110000001100001110111001010", 
    732 => "11101100111001110000100011100111", 
    733 => "11001110001011110010000100000111", 
    734 => "11101100111000111111001111010110", 
    735 => "11110010000010101110111100010100", 
    736 => "00111011101101111100011111100011", 
    737 => "11110011001000010000000100100100", 
    738 => "11101001000000001101111111011010", 
    739 => "00001011000111111111111111101101", 
    740 => "11101011000101011110000111011001", 
    741 => "00100011001010001110111100001100", 
    742 => "11010010000001110010111000010100", 
    743 => "11110001111110100101000000001100", 
    744 => "11110110111010110000101000101011", 
    745 => "00010011000010000010010011001011", 
    746 => "11010001000010001011111011110110", 
    747 => "00011011000100110010001000100101", 
    748 => "00101001000010110000100100111111", 
    749 => "11101011111110101100111111110001", 
    750 => "00001000111111101101110011111001", 
    751 => "11111011000010101111001011111111", 
    752 => "00100100111111110011001000010010", 
    753 => "00010001110111110100101011110101", 
    754 => "11010010000101100000001001001100", 
    755 => "11101100110111101101000000010111", 
    756 => "00001000000100001110000111100101", 
    757 => "00001011111100101100111111011000", 
    758 => "11101100001000011111000011111111", 
    759 => "11101000000100011111001011011000", 
    760 => "11010101000001001101100111010011", 
    761 => "00001001010011101111011011111010", 
    762 => "00101010111100001110100011011111", 
    763 => "11100101000010011111111011110100", 
    764 => "11110001111101011111011111111110", 
    765 => "11111010111101001111001000010011", 
    766 => "11011000000101010001001011011001", 
    767 => "00000000000101110000001000011111" );

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

entity ReadA115130_weights_0_1_31 is
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

architecture arch of ReadA115130_weights_0_1_31 is
    component ReadA115130_weights_0_1_31_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA115130_weights_0_1_31_rom_U :  component ReadA115130_weights_0_1_31_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

