-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA115130_weights_0_1_18_rom is 
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


architecture rtl of ReadA115130_weights_0_1_18_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00001110111010100010011111111010", 
    1 => "00101001111110100001001111010000", 
    2 => "11010001000111000010001100000110", 
    3 => "11101100110101110001101100101100", 
    4 => "11100001101100111110000100100100", 
    5 => "01001110111100001101011111011110", 
    6 => "11101000110001011110111000101110", 
    7 => "11100101111110000100000000101000", 
    8 => "11100111111100100001000011111111", 
    9 => "11001111111111011011011111111110", 
    10 => "00110100111101010001111000000000", 
    11 => "00001010111100001101101100101100", 
    12 => "10000001111000010001110000010111", 
    13 => "11110001000100111110110100001001", 
    14 => "11110100110000110000111111111100", 
    15 => "11011110000000001000101100000100", 
    16 => "11100011111011111110000000000101", 
    17 => "10111000110001110001000111101000", 
    18 => "00011111111101100001111000110100", 
    19 => "00001100001010111100100100010101", 
    20 => "11111111000111000011010000000111", 
    21 => "11001110111101111110101000010011", 
    22 => "11101110110010100000110100011000", 
    23 => "11110001001110001010101100101111", 
    24 => "11101001000010101011111100011111", 
    25 => "01010100001110001101010111101101", 
    26 => "11111001000100100000110000101000", 
    27 => "00000100110011000001111011110011", 
    28 => "00000100000001011111000111110101", 
    29 => "00001100001010001011100000110000", 
    30 => "00111111001101101100101011111010", 
    31 => "00011001111110011111010100001100", 
    32 => "00011110000010111110011011011110", 
    33 => "11111111111110101100111011101111", 
    34 => "11100011110110010001100100010100", 
    35 => "11111000111111011111011100000101", 
    36 => "11111101011011100010100011011011", 
    37 => "00000110111000001101111101000001", 
    38 => "00110101000010101110010111110111", 
    39 => "01001111111100110100100011110001", 
    40 => "01001111000010100001111011111011", 
    41 => "11000011111010100001001000100110", 
    42 => "11001011110110001110001111100100", 
    43 => "11111011111011110010101000100110", 
    44 => "00001111111101101101011111100100", 
    45 => "00010111000110101010111011100010", 
    46 => "00110011111101001110101111111011", 
    47 => "00000011111101011101111111110101", 
    48 => "11111101110011111110111111100110", 
    49 => "11010101111110011001101111111110", 
    50 => "11110100110110111111001100000111", 
    51 => "00100001111100111111111111010000", 
    52 => "00010110000011000010011111100110", 
    53 => "00100010000011010010011111111111", 
    54 => "11101001000111000010111100000001", 
    55 => "00011011111001101011010111110000", 
    56 => "11110000000010001000001111011001", 
    57 => "00101111001110010000100011100110", 
    58 => "00000001101011101101011011010101", 
    59 => "00001101000001100001011111011001", 
    60 => "00100001001010110000110011100101", 
    61 => "00000000000011110101100000010010", 
    62 => "00101110110100111110110100010000", 
    63 => "10101101111001000001111000101100", 
    64 => "11101110111110110000111111111001", 
    65 => "11111001000111001101110111100001", 
    66 => "00000101111001101101000000001011", 
    67 => "00100101111110100111111000001011", 
    68 => "11001010111010011101111011110010", 
    69 => "00000001001011101111001011101111", 
    70 => "00010100000100100011100000011111", 
    71 => "00010001111111101001110011111111", 
    72 => "11110001111110001110010011100101", 
    73 => "11110000000010100010001011100101", 
    74 => "11110010000110010000101100010110", 
    75 => "00010110000001000010111011100000", 
    76 => "00101101111100001111101111101100", 
    77 => "11101011111001011011100011011101", 
    78 => "00011001111001111100101011110110", 
    79 => "00000110110111000001011111110111", 
    80 => "00001111000011111110111100001000", 
    81 => "00010100111111011110101100101101", 
    82 => "00101011001000101011011111111110", 
    83 => "00101001000100001101101000111111", 
    84 => "00100111111010010101110000100110", 
    85 => "11110001111110001111001110110101", 
    86 => "00010001110001001111110000001011", 
    87 => "00000010001000101100010100100111", 
    88 => "11111010000100001111101100000001", 
    89 => "00101000111011000011010110100011", 
    90 => "00110000111101001111111010110110", 
    91 => "00101011001110011110100000010010", 
    92 => "11011000111011010000001111100011", 
    93 => "11111011000000100000000011110000", 
    94 => "00000000100100010100011100001010", 
    95 => "11110110111111100100001100000011", 
    96 => "11011101111110001111011100010100", 
    97 => "00101001000001011100100100000010", 
    98 => "11100000111011111110110100011001", 
    99 => "11110110000001110000010011100110", 
    100 => "11001101101010110000100110101110", 
    101 => "00100011001010010001000000010101", 
    102 => "00001000111011110000011100001000", 
    103 => "10111011111110001101000100101001", 
    104 => "00000100001011001111100000010000", 
    105 => "00011111111100011110010111101011", 
    106 => "11110111000110111001111100010000", 
    107 => "00100000111110100100010000010111", 
    108 => "11101000111000000011100111010001", 
    109 => "00010100000001110011101001001101", 
    110 => "00100001111000111100000011101111", 
    111 => "00110010010000010011001100110110", 
    112 => "00010100111010000100001111110001", 
    113 => "11101100111010101111111011110010", 
    114 => "00000101000001110001011111111000", 
    115 => "11111000111111001101000100001000", 
    116 => "11111010000011010000001111101101", 
    117 => "11100000000011001111110000010110", 
    118 => "11100000110111010001100000010000", 
    119 => "00001010000001110011001100000101", 
    120 => "11111100110110011101100000101001", 
    121 => "00000010000000011011111100011001", 
    122 => "11010010111101111110011011111110", 
    123 => "11101100111100110100000010111001", 
    124 => "11110111000011110001011111011110", 
    125 => "11001100110011111111010011111111", 
    126 => "11101100111111011101010011111001", 
    127 => "01011110000111001110001011101110", 
    128 => "11111110110010000000011100010110", 
    129 => "00000010110100100000011011100001", 
    130 => "00000110111010010000010000010010", 
    131 => "00000011111101110010001000000010", 
    132 => "11011110111100101111110011111100", 
    133 => "00010000000001011111101100000001", 
    134 => "11101011111101001111101101000000", 
    135 => "11111001000100111111000001100101", 
    136 => "11110100000011000100100111101011", 
    137 => "11101001001011000001000011001010", 
    138 => "11111111110011101110110000001100", 
    139 => "00010000000001011101010011110010", 
    140 => "11001011001001100000011100010101", 
    141 => "11011001001100000110001011010011", 
    142 => "11001110001000011111110111111111", 
    143 => "10010111000100001111100100010011", 
    144 => "00011110000010000010010000001000", 
    145 => "01010101000111111111100100111110", 
    146 => "11111110000001100001011000011000", 
    147 => "00100011111100101110101100100000", 
    148 => "00101110111100000000001011110111", 
    149 => "11111100000010001111000100001110", 
    150 => "11100011111111011110111000010110", 
    151 => "00010110000001011111100111111101", 
    152 => "00101110000100110011000111111000", 
    153 => "00001110001010110000001111101010", 
    154 => "00100100000010011111111000000000", 
    155 => "11011010110111111010110111011011", 
    156 => "00011111111011001111100100000110", 
    157 => "11111110000000010001000111111001", 
    158 => "11111010111101101110001000001000", 
    159 => "00110100001000101111100000000101", 
    160 => "11111100110101001011000111111101", 
    161 => "00110000000001011110011010111100", 
    162 => "11011100000011001011011111110101", 
    163 => "00000011010010111110110011010110", 
    164 => "11100110000011101111100011001010", 
    165 => "00001011000011110010011011111111", 
    166 => "00000100111101101100100000000101", 
    167 => "11111000000110010010000111110010", 
    168 => "00000000111100000000001011111101", 
    169 => "11011000000110101110101111110010", 
    170 => "11111011001101101111000011000110", 
    171 => "10101001010100001100100011111101", 
    172 => "11010110111000011001100000011001", 
    173 => "00000111111101111100111100101011", 
    174 => "00000110111000101101101111100111", 
    175 => "11010111000100101111111111011010", 
    176 => "11111001111110010000111111101000", 
    177 => "11111011000010011100000000010011", 
    178 => "00111010000111110000011011110010", 
    179 => "11001110111001010001010011110101", 
    180 => "11011000111111111110110111001111", 
    181 => "00000110000000101111111111100111", 
    182 => "11101110110100001101101000101000", 
    183 => "01000010010111011111000100011001", 
    184 => "11100100100100100000010100000001", 
    185 => "11011101111010001111001011010010", 
    186 => "11010101110011110010001100001110", 
    187 => "11100001111000000011100000000101", 
    188 => "00000100000110010000101111010011", 
    189 => "11110001111111010001101111000111", 
    190 => "00010000111010111100110111110110", 
    191 => "11100000111111101111101110111010", 
    192 => "00010000001010011111011010111011", 
    193 => "11010000001010111100001111101000", 
    194 => "11011100111000011111000111010011", 
    195 => "11110111000101111100110101010000", 
    196 => "00001100000101101110010011110101", 
    197 => "00010100111001101111111010101110", 
    198 => "00000001111111010011100100111110", 
    199 => "11101100000001100001111111100100", 
    200 => "00100000111001011111001000101100", 
    201 => "11011001111101001101101100111010", 
    202 => "11100111000010000010001100001101", 
    203 => "10101011000000000011110011000010", 
    204 => "00100000001011100000101011110011", 
    205 => "00100000111000011111001011010100", 
    206 => "00010001111111111101111000000001", 
    207 => "01011010111100001010101100100001", 
    208 => "00011001000001001110100111010001", 
    209 => "11101001111101111110110011011101", 
    210 => "00000101111110111101011011101100", 
    211 => "11000110110110011110110000001110", 
    212 => "00000011000011000000100011011101", 
    213 => "11001111001111100100101111100111", 
    214 => "00001110000000110011000000000110", 
    215 => "00111101111110001100110100100100", 
    216 => "00110001001010100000101011111101", 
    217 => "00000010000001001111111110011011", 
    218 => "11010010000111110000010011100111", 
    219 => "00000100001011000000010111100101", 
    220 => "00011000111001011111110100011110", 
    221 => "11110001001000101101000011010011", 
    222 => "00010100111111000000000011110000", 
    223 => "11101111000001110011000011010001", 
    224 => "11101110000011010011111011111110", 
    225 => "00110000010011011111011010110111", 
    226 => "11101110001001111111101100111011", 
    227 => "11000101000011100001100100101111", 
    228 => "00011010111111100000101000111110", 
    229 => "00000100111111110001000000001000", 
    230 => "00111001000110100001111000000011", 
    231 => "11100110000010011100001000001000", 
    232 => "00000001001000100001000100010110", 
    233 => "11101110000111111111011011111110", 
    234 => "00110110111001111011000011011011", 
    235 => "11111111001100001011100100010010", 
    236 => "11110011000101010010000111111001", 
    237 => "10110010110101110100010011111000", 
    238 => "11111111001000000010101111110000", 
    239 => "00011111001011110010010011101011", 
    240 => "00011010110001110000111111110001", 
    241 => "00110000001010001101111011111111", 
    242 => "00000001111011000100100011100100", 
    243 => "11100011111011110100100000010010", 
    244 => "01000100111000110000011100011111", 
    245 => "00000001000101100000011111000010", 
    246 => "00011011110100101100010011111100", 
    247 => "11110010110110000010110100110111", 
    248 => "00011010000011001110100100010001", 
    249 => "00010101001100101111001111100101", 
    250 => "00010111000010101100000100100100", 
    251 => "01000111110010111010110101101010", 
    252 => "11010001000100101111110000000111", 
    253 => "00000101111010010100001000010101", 
    254 => "00001010111110011111011111001010", 
    255 => "11111000000000111110010111110000", 
    256 => "11111101000101011100100111110101", 
    257 => "11110110000001010010000100011100", 
    258 => "00100010000111010000001111100100", 
    259 => "00000111111011001110000011110110", 
    260 => "11110001000001000101101111010101", 
    261 => "11110101111111100100100011100111", 
    262 => "11011111111110101111100100100101", 
    263 => "11110001000000100110011011101100", 
    264 => "00100010110111111111100000010100", 
    265 => "00011110001000101101100011001110", 
    266 => "00010111000100111110110100000011", 
    267 => "00100101111101001111001010111110", 
    268 => "11011010111110100000011011100100", 
    269 => "01010111000010110101000111110011", 
    270 => "01001011111000000001010111110010", 
    271 => "11111111000101101010110000010010", 
    272 => "11110001000100111110010100001011", 
    273 => "00101010111100111101000010111111", 
    274 => "11100111001000000001111000000010", 
    275 => "11011100001000000000011000110000", 
    276 => "00010101111100101110111100110111", 
    277 => "11110001001010011111100011011011", 
    278 => "11111001110010100000111100000111", 
    279 => "11011110111110100110001011011111", 
    280 => "11101000111110111111010100000111", 
    281 => "00010011111100101011011011110111", 
    282 => "11110001110111100010100100000110", 
    283 => "11011010111101010011001111101100", 
    284 => "00001001111010110000010111110100", 
    285 => "11110001000000101111111011101111", 
    286 => "11101110000001000000000111110101", 
    287 => "11100000111011001000010011111011", 
    288 => "00100100000000110010101000100100", 
    289 => "00110100001011100111000000110100", 
    290 => "11110110111011000000010100011001", 
    291 => "11110011000011011010111100101010", 
    292 => "00000101000011000100110011110001", 
    293 => "11110001111110111101100100110110", 
    294 => "11111100110010101110000011110001", 
    295 => "11011100111101111011111111111010", 
    296 => "00010000000010100100001111110111", 
    297 => "00011100111101100111001100011101", 
    298 => "00001011111101000000001000010000", 
    299 => "10110011110110111110111111101101", 
    300 => "11111010000101100000110011111111", 
    301 => "11010010000110110101101101001000", 
    302 => "11101011000001011101110111110111", 
    303 => "00011100111110010111011011110000", 
    304 => "00111111111110110000110111100001", 
    305 => "00001001111100110001010111100110", 
    306 => "11100100000101011111010000010110", 
    307 => "00100110111011110101000100001110", 
    308 => "00010101000100010000100111110000", 
    309 => "11111101111111011000000111100101", 
    310 => "00011111111011001011100011010111", 
    311 => "11011001000011001100010100001110", 
    312 => "00000001001100110000000100010101", 
    313 => "00010000110011010110010011111110", 
    314 => "00001110000100110000111111010001", 
    315 => "11111011111011010001100000011100", 
    316 => "11101110111010100001110000000001", 
    317 => "00001110000010011001001111111110", 
    318 => "00100100000010000010111111011011", 
    319 => "00110100111100000110110000100111", 
    320 => "11011110000011100010101111101100", 
    321 => "00011001001101010000011101000010", 
    322 => "00000111110011000011001011101110", 
    323 => "00001110000010011110100000001100", 
    324 => "00010010111011001111010111100000", 
    325 => "11011011111001111100101111010100", 
    326 => "01000010000010111011111101000011", 
    327 => "00110001110101010110110111101011", 
    328 => "00100111001010011011100000000000", 
    329 => "11101111101010101111011011010101", 
    330 => "00011101111100000010000011011001", 
    331 => "00010010000000000001001000010111", 
    332 => "00110000111000110000100100001010", 
    333 => "11111110111011101011000011101011", 
    334 => "11001111101110101111110100011101", 
    335 => "11100110000010101101000100011001", 
    336 => "00000011111100001110000100101011", 
    337 => "11101101001010101001111111101111", 
    338 => "00011011110010000000100011100111", 
    339 => "11110010001011011101100110111101", 
    340 => "11000110110101001111100000110001", 
    341 => "00101101000111100110011000010010", 
    342 => "10101100110001011111110100001011", 
    343 => "00110001100111010001111011110101", 
    344 => "11110001000011010010011100001100", 
    345 => "00100110111110101111011111011010", 
    346 => "00011110000110100001110111011111", 
    347 => "00000111111000000000111011101000", 
    348 => "11100100000010101110100010111000", 
    349 => "00001001000100100000110100100011", 
    350 => "11001011111011000000000100010111", 
    351 => "11100011111110001011001000100100", 
    352 => "00010011010001111110001000100011", 
    353 => "00011010000010101110011111101010", 
    354 => "11110100111010000010100011110101", 
    355 => "11111111000001011100111111100110", 
    356 => "11011010000010101101111100101001", 
    357 => "00101001111111011100010111111100", 
    358 => "00111000111101000000000100100100", 
    359 => "00010111000011011101111111010110", 
    360 => "00000011000010011110100111101010", 
    361 => "00000010001000110010010100000100", 
    362 => "00001100001011000001011011101110", 
    363 => "00100100111000000010101101000000", 
    364 => "11110101001100001110001000110011", 
    365 => "00111010111010001000001100001001", 
    366 => "11010100111110111111011111101000", 
    367 => "11111100110011110011011011101110", 
    368 => "11100010000100100001010000000101", 
    369 => "00001000000001100010011011101001", 
    370 => "00000001000010100010100100010101", 
    371 => "11110011111111100011101100011011", 
    372 => "11111100000000101011111011101001", 
    373 => "11101011110010010011001111001000", 
    374 => "11101110111011110001100000100101", 
    375 => "11001011101111111111111111110111", 
    376 => "11010101000011010001000100010010", 
    377 => "00000111001001111111000111111111", 
    378 => "00100010111001110000111100010101", 
    379 => "00010111000011110001000100001110", 
    380 => "11101011001000001110110111100100", 
    381 => "00000000111010000000000100000010", 
    382 => "11011110111000001111110111110001", 
    383 => "00000100111011101101000100010101", 
    384 => "11111000111010011111110100000100", 
    385 => "11011000111111100000110100110110", 
    386 => "00101101000100110010100010101101", 
    387 => "11110000010011100001001100001010", 
    388 => "11111100111101111111100011100001", 
    389 => "11110011000011101101010100011011", 
    390 => "11100100001010011111111000000111", 
    391 => "01001010011101100010011111001010", 
    392 => "10011001000100101110101000011001", 
    393 => "11110010110110111110010001001011", 
    394 => "11101100000011000000110100110001", 
    395 => "11010000000000000000100100010110", 
    396 => "11110110000010011111110111010000", 
    397 => "11101110000000001110010101000000", 
    398 => "00010011110111101111101011111111", 
    399 => "00001110111110110010110100011101", 
    400 => "11110010001100000010001011010101", 
    401 => "00000101111110000011100011111010", 
    402 => "00010100101101010100010100001011", 
    403 => "00011010001001010001000111111110", 
    404 => "00100110110000000000011000000101", 
    405 => "00101011111100111111100111011101", 
    406 => "11011110101101000001101111111110", 
    407 => "00100011111101001011011000101101", 
    408 => "00110001111100110000110111101111", 
    409 => "00010001111001110011101000001110", 
    410 => "00001001000010110000011010111111", 
    411 => "11110101000111100100011011110011", 
    412 => "00100100000110110011101000011010", 
    413 => "00110000110001111100010111001010", 
    414 => "00100010110011111100111000001101", 
    415 => "00110110111100000011010011111000", 
    416 => "00000110000111000000111111111011", 
    417 => "00011110101110100001011000100010", 
    418 => "11001101001110010000001011111101", 
    419 => "11010111110011100000100111010100", 
    420 => "11010001000110100001110111110000", 
    421 => "11110011111101001110110000001100", 
    422 => "01011001000100010010100111011000", 
    423 => "11011001110000010011001100011110", 
    424 => "11101111001111010101000011000111", 
    425 => "11111001101100000000101111111000", 
    426 => "01001011111001100001010011101111", 
    427 => "11110001101111101110111000010010", 
    428 => "11111010111011001101100111100001", 
    429 => "11111010111111011110001111100010", 
    430 => "11111110000011110010010111001100", 
    431 => "00100010000100100000001111101100", 
    432 => "11101111110111100000000000011001", 
    433 => "11111100111010100110000011100100", 
    434 => "00001001000111001101111011110110", 
    435 => "00100101101101110011000011011010", 
    436 => "11110011011001101101010000000001", 
    437 => "11110110111001000111001011101010", 
    438 => "00100010111101100010011000010100", 
    439 => "00100000111111010101010111100100", 
    440 => "11101111101100101101010011100000", 
    441 => "00000000111110011111001101010010", 
    442 => "11100010001010110001011000000110", 
    443 => "10101100111100010100000111000101", 
    444 => "00011010111110011111010100001010", 
    445 => "11011101111011101110110111101000", 
    446 => "11000001001011110001111111010101", 
    447 => "10111011111101000011111000001101", 
    448 => "11110001000001000001011100011101", 
    449 => "00011011111111011111101111100100", 
    450 => "11111001000101000000010000001110", 
    451 => "00010110000011000000001111011110", 
    452 => "00100001101111011111001100001010", 
    453 => "00000111110101001011100000000011", 
    454 => "11110111000111101111110100011101", 
    455 => "11101011001001101101011000000101", 
    456 => "11010011111010101110000100010010", 
    457 => "11111110000001001111010111101110", 
    458 => "00010111111101101111110111111010", 
    459 => "00011000111010001110111111101101", 
    460 => "11110101111100011101111111100111", 
    461 => "00010010000010010001111100010111", 
    462 => "00100111110111000001010111011101", 
    463 => "00001011000110111111001000000101", 
    464 => "11111111111101110010011000000001", 
    465 => "00001100000011100001111011111010", 
    466 => "11011110110111101110101011100010", 
    467 => "11101111110011011111000000011110", 
    468 => "11111101000110110010001111101111", 
    469 => "00011011001011000001000011100000", 
    470 => "00010001000011010001001000000001", 
    471 => "11110110000101101111011000001100", 
    472 => "11110110110001011101000100101100", 
    473 => "00011011111000100001010011101001", 
    474 => "00000011110111101111101100000010", 
    475 => "11111001000011110001101111101101", 
    476 => "00001000111001111111110100000001", 
    477 => "00010111111011110001111100000001", 
    478 => "00010010000110101110111000011010", 
    479 => "00010011000101000000111100000001", 
    480 => "00010110000011100000100111101100", 
    481 => "11010111000000001111010100000111", 
    482 => "00101110000100110000011000100010", 
    483 => "00001000111101011111000100100000", 
    484 => "00000111000010010001010100001001", 
    485 => "00011101000101100000111100000000", 
    486 => "00010101111111110000110100011000", 
    487 => "00010111000111001111001100001000", 
    488 => "01000011110011111010000111100101", 
    489 => "11011010111000011111100011100010", 
    490 => "00010001000011100000111011110000", 
    491 => "11110110000101110000101100000101", 
    492 => "00001111111011000001100100011000", 
    493 => "11101011000000100011010100000000", 
    494 => "11101011001001000001110011111100", 
    495 => "00010111110001101111010001001001", 
    496 => "11100000111011111110000000000101", 
    497 => "11111000111110000000101111110110", 
    498 => "00000010110111011110010111011010", 
    499 => "11101000110111001111111111010111", 
    500 => "00001110000101011111111111110111", 
    501 => "00000001111110110001101111111011", 
    502 => "11011110000011000100111000100001", 
    503 => "10100111111000111100001111000000", 
    504 => "11100111111001111101111111110111", 
    505 => "11111000111011000000101011011100", 
    506 => "11111000000111100001011000101101", 
    507 => "11111100111010010001011000011011", 
    508 => "00001010111000010010000100011011", 
    509 => "00111110000011101100111011101110", 
    510 => "00000110110101010000010000001100", 
    511 => "01000010110001010000110011111000", 
    512 => "01000010110001000010000010011111", 
    513 => "11100101111111100011011100000100", 
    514 => "11011110001001000010011111110000", 
    515 => "00101010000101011101101111101111", 
    516 => "00000010000111110001011000001111", 
    517 => "11100011001000001100100111111001", 
    518 => "11110001000111000000001011100010", 
    519 => "11111001111111010000000000001001", 
    520 => "00001000111101011101010100001100", 
    521 => "00101100111011101010100101001100", 
    522 => "00100100110111101101101000011111", 
    523 => "11111010000101111110101100100101", 
    524 => "00000011000010101111010011100000", 
    525 => "00011100000000111000101010101111", 
    526 => "11101110010010001011001111011011", 
    527 => "10111010111111011100011100010111", 
    528 => "00010000001110011111010100110111", 
    529 => "00100100111011100101111101000000", 
    530 => "11111010111011001111011111110100", 
    531 => "10111110001001001101000111110110", 
    532 => "00001101001010011110101000001000", 
    533 => "00010000000100011010111111110011", 
    534 => "00011111000100100000100000010011", 
    535 => "11110101111101101111010000011100", 
    536 => "00111110111000011111101100101000", 
    537 => "10111101000001101110101100010100", 
    538 => "00110011111011000001000100001100", 
    539 => "00101100000101100000011100000010", 
    540 => "00010010000010101011000111010111", 
    541 => "11101101000100010000100100010100", 
    542 => "11110101110100011100010011110001", 
    543 => "11101111000111000001101011101111", 
    544 => "11101100000100001111001111101100", 
    545 => "11111111000111110011000011100100", 
    546 => "00010101000000111101001000010111", 
    547 => "11000000000010110000111011111010", 
    548 => "10110100111101011101110111011100", 
    549 => "00100010000001011100100100010110", 
    550 => "10110010110111101110110000011000", 
    551 => "00101001111011010010000011101111", 
    552 => "00111100110001000000001100110001", 
    553 => "11100011000000110000001000101100", 
    554 => "00001010000000110000010111101000", 
    555 => "11001111000001000001111000011101", 
    556 => "00001010001010011101111100010101", 
    557 => "10110010110100101010100111010010", 
    558 => "11000011111000101101100110101111", 
    559 => "01011001111010100010000100000011", 
    560 => "11111000000001000001010100100010", 
    561 => "11110100001111011101101100101011", 
    562 => "11101001000111110000111100000111", 
    563 => "00011001111110010000110011110100", 
    564 => "11110111111110001111111100001000", 
    565 => "00010000111110100010100000011010", 
    566 => "11111101111101110001010100111110", 
    567 => "11010000000100110001001100001011", 
    568 => "00010111000011100000110011010100", 
    569 => "00010100000110000100101000000000", 
    570 => "00111011000110110010110111011001", 
    571 => "01000111111000110000000100010100", 
    572 => "11111111111110000000110100110001", 
    573 => "00001011000010100001011000110110", 
    574 => "11011100001000010000110100000110", 
    575 => "00000100001000101011011011110001", 
    576 => "11110110111111001110001100000001", 
    577 => "11111011001001011010000001000110", 
    578 => "11101011000111011101110100000011", 
    579 => "11001001001011110001101000100101", 
    580 => "00110101111111111101110011111111", 
    581 => "00010100110101001110001011100100", 
    582 => "00011101000011001010111011111000", 
    583 => "00001100111010100000001111111010", 
    584 => "00100001111110010001011110100111", 
    585 => "00110010001111101110010111010100", 
    586 => "11111011001000010011010011111110", 
    587 => "00010100111100010011000011111011", 
    588 => "00000100111110111100011011110000", 
    589 => "11010110000111010001011111101011", 
    590 => "11001001001111010000101111110111", 
    591 => "00111011001110011101010000011000", 
    592 => "00001110111111100011010011001011", 
    593 => "11111000001000001101011111010101", 
    594 => "00010100111101101101001111011110", 
    595 => "11111111011011100000011000111100", 
    596 => "00001101111100101101000001100010", 
    597 => "00000101110011001011000000000000", 
    598 => "10111101111000101100000111110001", 
    599 => "11010000111110101111000000000001", 
    600 => "00000001000101110001011000011010", 
    601 => "00101110101001100000101000001101", 
    602 => "11100111001001010000110111111001", 
    603 => "11011010000010011100110111010101", 
    604 => "11101100010100100001000100011011", 
    605 => "00010101110010100000011000011011", 
    606 => "00111011010001110010011011100111", 
    607 => "11111010001111100001001101011000", 
    608 => "00011100111000000010011011110111", 
    609 => "11110000111000100000010011010101", 
    610 => "11010111110111100001111011101111", 
    611 => "11110001000001100001100111110001", 
    612 => "01100010000000010010010100010100", 
    613 => "11110111111000101100111100110011", 
    614 => "00000010000100100000000100010110", 
    615 => "10111111111011000010010001011110", 
    616 => "11001011101001111111101000001010", 
    617 => "00001100010000001110100011000001", 
    618 => "11101111110110101111100011110100", 
    619 => "00010011001111110100101000010000", 
    620 => "00011011010010010001111101011011", 
    621 => "00100100000011111100111100101100", 
    622 => "11111010000000011111111111110010", 
    623 => "11111101010101111111111011111100", 
    624 => "00001010111110010011000100011100", 
    625 => "01000100000001010001100100110101", 
    626 => "11110010000111100011001011101011", 
    627 => "00001010111100011111010000110000", 
    628 => "11110111000111000000000100001010", 
    629 => "00101000001100000011111000000000", 
    630 => "11110011001110010000000011110101", 
    631 => "11001010001110001110100000101111", 
    632 => "11010111110100101110011101000110", 
    633 => "00111100111101101101010011101011", 
    634 => "11100101111001111110001111010110", 
    635 => "00111001110101100010011011011011", 
    636 => "11110100000101000000110100100011", 
    637 => "11001111000101000010010111110010", 
    638 => "11111110111110110000000011111101", 
    639 => "00000001000000111110111000001010", 
    640 => "11110111000000100000101111011000", 
    641 => "00000100110101000010001000000001", 
    642 => "11111111000001111111110111110100", 
    643 => "00100011000001101111110000001110", 
    644 => "00000001111011000000001011110111", 
    645 => "00001111110111101110110011010111", 
    646 => "11111111000111110001000000000000", 
    647 => "00101011000100100010011000100110", 
    648 => "11111100111010101100010111100101", 
    649 => "11011011110111000000110011101001", 
    650 => "00001111000010011111110000100100", 
    651 => "00000000000110110010110100110000", 
    652 => "00001000111111101111000011101010", 
    653 => "11101101111000111111000011010111", 
    654 => "00001110000010001111110000001000", 
    655 => "11111100000001111111001011111010", 
    656 => "11000100111111110000010011111101", 
    657 => "01011010111110101111110111101100", 
    658 => "11111110001000000001111011111111", 
    659 => "00100111110110011110101111110011", 
    660 => "11011100111000011111000000001110", 
    661 => "11011111110111001101000111100000", 
    662 => "11000000001000111111100000000111", 
    663 => "00000001111110110000010000011011", 
    664 => "00110011111000011111111100001110", 
    665 => "11011100001111001110100100000110", 
    666 => "11110001010001001111100111110110", 
    667 => "00010010111101111111111111010111", 
    668 => "00100100000101010010100100101101", 
    669 => "00000111110001000000100111000101", 
    670 => "00101001001010100010000011001101", 
    671 => "11101001110001100001110100011111", 
    672 => "00001111111000010000110100001011", 
    673 => "00011001001001000000001011110000", 
    674 => "11110010111010100001001100010100", 
    675 => "11100000000010010100000111011000", 
    676 => "00011011000011111111110011111111", 
    677 => "11100011000110110011011011100000", 
    678 => "00011101110011000011100111111001", 
    679 => "11111011111110010000000100000011", 
    680 => "00010001000011110011000011111010", 
    681 => "11101111001100100001111000101001", 
    682 => "11100111000000001100001000010101", 
    683 => "11110001001011111110010011100001", 
    684 => "10100100000010111111110000000101", 
    685 => "11101101000000100000011100100011", 
    686 => "11011101111011101111101000010000", 
    687 => "00000010111101010010101111010011", 
    688 => "00001001000110011111111111111110", 
    689 => "11101110000000000001011100000101", 
    690 => "11011001000111101111011011110101", 
    691 => "00100000001010010001000000001100", 
    692 => "00010100111111110001010111111001", 
    693 => "11011111111010010001000111110110", 
    694 => "00010110001001011110010111001101", 
    695 => "11011111001011110001010011001100", 
    696 => "00011011111111010001011100001010", 
    697 => "00000011000111110000111000011100", 
    698 => "00011101000101100011110111111001", 
    699 => "11100101110101010001110111001011", 
    700 => "00101010000110011011011111100010", 
    701 => "11111101101011101100011100110011", 
    702 => "01010110001110101101011111101101", 
    703 => "00011001110001111011001111111110", 
    704 => "11010011111110111011110111000011", 
    705 => "00001001111000110010100000001100", 
    706 => "00110010000000011110010100100001", 
    707 => "00000110111101011111000011111000", 
    708 => "00011100000011010000101111111101", 
    709 => "11111010000010001111111000100010", 
    710 => "00000110000001010000100000010011", 
    711 => "11100001001110001101001000100110", 
    712 => "11111101111010011111011011111101", 
    713 => "00100011111010101011111111101011", 
    714 => "11101011000111100001011111100011", 
    715 => "00000001001011010000011011101000", 
    716 => "00100101010001111111010000111101", 
    717 => "00010010110111000011110000001010", 
    718 => "11100010110110001101101000011101", 
    719 => "00010110000101101111010011110111", 
    720 => "11100010111100001100011100101100", 
    721 => "00000010111011110011111011011010", 
    722 => "11101111001010011101100100100000", 
    723 => "11101111111000100011111011100100", 
    724 => "00001001000010101101100000000000", 
    725 => "11010000000001000000101111110100", 
    726 => "11111000000101101110110100011011", 
    727 => "00010010111001101111101011010010", 
    728 => "11000000001000111100000011001100", 
    729 => "10011010000011101111010011110010", 
    730 => "00011110111111110001010111111011", 
    731 => "01000101110110010000010000001110", 
    732 => "11111011111000100001010100100110", 
    733 => "00101000111110111110011111110010", 
    734 => "11111001110100110010110000101001", 
    735 => "00101001111111010001010000011010", 
    736 => "11011011000101101110000100010100", 
    737 => "10110011001000100001011101001001", 
    738 => "11111101111111110000001011110011", 
    739 => "11101100001000000010010100011110", 
    740 => "11001010111101110000000000011100", 
    741 => "11101010111111001111101000100001", 
    742 => "00110111111101000001100000000010", 
    743 => "11111001111101010000010100010111", 
    744 => "00011110000101010000100100010001", 
    745 => "00010001000000011101100111111011", 
    746 => "11001101001010010010001100001001", 
    747 => "00010101111011110010001100000001", 
    748 => "00100100111011010001111011100011", 
    749 => "11110110110111111111000000100010", 
    750 => "11110001000100100011010100011010", 
    751 => "00010111001001001110111011110111", 
    752 => "00001111111001101110101011111000", 
    753 => "11010110000001000001110101100101", 
    754 => "00000110110001101111011000001110", 
    755 => "00111010111101100110110111100000", 
    756 => "00011011000110100010110100000100", 
    757 => "00101101111110000010100011111011", 
    758 => "11101100000010100000111011111010", 
    759 => "00010000111101010001011111011001", 
    760 => "11001011001000001110010100001010", 
    761 => "01000010000110011111110100001111", 
    762 => "10111110001010011111100100001000", 
    763 => "11001111111010001101111000100111", 
    764 => "00001100110110011101111011011110", 
    765 => "00010100000010000010100011011111", 
    766 => "11010000001110101100101100001100", 
    767 => "11111100000000100001000111010101" );

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

entity ReadA115130_weights_0_1_18 is
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

architecture arch of ReadA115130_weights_0_1_18 is
    component ReadA115130_weights_0_1_18_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA115130_weights_0_1_18_rom_U :  component ReadA115130_weights_0_1_18_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

