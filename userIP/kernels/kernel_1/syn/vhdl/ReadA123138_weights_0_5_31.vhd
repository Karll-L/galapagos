-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA123138_weights_0_5_31_rom is 
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


architecture rtl of ReadA123138_weights_0_5_31_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11111011101011100000111010110111", 
    1 => "00111110000111100010000011111111", 
    2 => "01101010000111111110100000000110", 
    3 => "11100110000100101111010011100111", 
    4 => "00010001001000100001010011001110", 
    5 => "11001101000110110110110011001011", 
    6 => "00010101000000100001110011111110", 
    7 => "00000000000001111110001011001110", 
    8 => "01100101000110101111010000000101", 
    9 => "11011111111110111111100000001000", 
    10 => "00001000111111001111010100010110", 
    11 => "00110100000111001111111000001101", 
    12 => "00010001000010010000111111110010", 
    13 => "00011100000001011101101000000000", 
    14 => "10110100000010111111101100011101", 
    15 => "00010010111001100010000011111010", 
    16 => "00100011111101101011101111010100", 
    17 => "11111111110110110110111000010101", 
    18 => "11110111001001000000111011010011", 
    19 => "11011001110100000000101111111000", 
    20 => "11010001000001100000110111001101", 
    21 => "00000111000010011111010100000011", 
    22 => "00001000111110001111100100001001", 
    23 => "11010101111101000000001011111101", 
    24 => "11010010000110001011100100001101", 
    25 => "00000100111010010001000000011101", 
    26 => "11101000000101101110001000110101", 
    27 => "01000100110101001111010000010100", 
    28 => "00011011000110011110111100010001", 
    29 => "00110010000100010000010100010110", 
    30 => "00001101110000101110110111111111", 
    31 => "00010010010010011110101100010001", 
    32 => "01111100111100101110110111111001", 
    33 => "11111000000100001100000000111111", 
    34 => "01001000000101001111011101010001", 
    35 => "11010110001101011110110111110000", 
    36 => "00010010000010000000001000101100", 
    37 => "11111000001000011101110011101101", 
    38 => "01001011111110001101011000001010", 
    39 => "11110001001011110000000111010110", 
    40 => "00000001000010011110100101000010", 
    41 => "11001000111101010010110100000001", 
    42 => "00101110000001010001011000100101", 
    43 => "01000101110011111110100000100010", 
    44 => "00000001000101101011110100110010", 
    45 => "00100010001110110001000000010100", 
    46 => "10100101001111011111000011110110", 
    47 => "00001000001110000000101000011100", 
    48 => "00000110111001101110111000100000", 
    49 => "11111110001100101101101100010010", 
    50 => "00010101000111000011111111110001", 
    51 => "11101111101110001100100111101110", 
    52 => "01001111111010100001110100100110", 
    53 => "00011011111011000000100011111110", 
    54 => "11111001000110100000110111101000", 
    55 => "11110101000000000001100000010010", 
    56 => "00100101111100101101001000010111", 
    57 => "00010111001110100001101100010010", 
    58 => "00111100111010111111011100010010", 
    59 => "00111010111000000100110111101100", 
    60 => "11010100000111111010000011010110", 
    61 => "10111011111110000100100100000111", 
    62 => "11110111111010100001001000000111", 
    63 => "00010110001010100000001100010001", 
    64 => "00110011000000100001100100111010", 
    65 => "11110110000101101111011111100001", 
    66 => "01011101111000010000110100010110", 
    67 => "00000010000110110010010011101111", 
    68 => "11101011000001001110111100101011", 
    69 => "00000111001000110010000100110000", 
    70 => "00100000111111111101000111101101", 
    71 => "00000101000100111110000000000111", 
    72 => "01011101111010011100100000100100", 
    73 => "11111100111101101110101011111001", 
    74 => "11111111000011001111011011101011", 
    75 => "11011111000000111111111111111000", 
    76 => "00101111000011011110111000001010", 
    77 => "00001011001111101100100000001001", 
    78 => "00101000111100101110110100011101", 
    79 => "11101000001010011110011000101111", 
    80 => "10111000111100100000110111000110", 
    81 => "00001101111011110000101100010011", 
    82 => "00110000111010010000100111010111", 
    83 => "00010111000110000010000011011011", 
    84 => "00001100000001100000101100100110", 
    85 => "00111001000000001111110111101011", 
    86 => "10110111111110100000000000110110", 
    87 => "01000110111110111101010011010111", 
    88 => "11001101001000001110001100000111", 
    89 => "00110110000011001101100100011001", 
    90 => "00001001111000011110100100011111", 
    91 => "00010100111010101100011111111100", 
    92 => "11011010001001011101101100100000", 
    93 => "11111110111011011011111111100001", 
    94 => "00001110000101011111001100000000", 
    95 => "00000001101100001110111000011010", 
    96 => "11110011111100001110001000011101", 
    97 => "00000011111110011111111011111110", 
    98 => "11111000001000001011111100001100", 
    99 => "11110111000100000001000011111100", 
    100 => "11010000000000000000110000100101", 
    101 => "00111000111001001111111111101001", 
    102 => "10011011111101111100111011010111", 
    103 => "00011010000111111110011000101101", 
    104 => "10111000000111000000100100000001", 
    105 => "11011111111100011110111111011001", 
    106 => "11110000111010110010000011011010", 
    107 => "00100110001100000000001111101110", 
    108 => "00101001110010010000110011110001", 
    109 => "00010000000110101111111011111000", 
    110 => "11110111001001111110000001011101", 
    111 => "00001001101010101111110011010111", 
    112 => "00000100101111101111000000000111", 
    113 => "11010000100101000011001000001001", 
    114 => "01000110000000000000010111111100", 
    115 => "00000110000011100001010100001111", 
    116 => "01010100111101011110100000010001", 
    117 => "00010001000000111111001011111001", 
    118 => "00110010111100001101101111111011", 
    119 => "00100000110000001111000000001010", 
    120 => "10010100111100101101111100000011", 
    121 => "11010101000100100001010011010011", 
    122 => "00000001111100111111101100000101", 
    123 => "11110101000101110000110000000001", 
    124 => "00001110111011000010010000011101", 
    125 => "00010100000111000010011011111001", 
    126 => "11000000111110111101101111010100", 
    127 => "00100000111110110000001111001100", 
    128 => "11111110110110100001010001001010", 
    129 => "11110101001110110001011100010100", 
    130 => "11011111000011011110000000100000", 
    131 => "00000101000100011110100011110111", 
    132 => "00111100001101000010100100010100", 
    133 => "11111111111101100011000000011101", 
    134 => "00100101110111011110001110101100", 
    135 => "11101011010010000001000010111010", 
    136 => "00101110000011011111000000010110", 
    137 => "11101000111001000011100100001100", 
    138 => "00011010111011110001110100100010", 
    139 => "00000100111010011110011100000000", 
    140 => "11110000000011010010001100101001", 
    141 => "00000011101010111111111011010010", 
    142 => "11100010111100110001100100000110", 
    143 => "11111101111001011011101100100000", 
    144 => "11110010110100100100100011010110", 
    145 => "11011111001111100010010100001001", 
    146 => "11110111000000000011111011011010", 
    147 => "00110110111001011100000111011110", 
    148 => "00111111001111110000111011011111", 
    149 => "11010110110111010010000100001000", 
    150 => "00000011101110101101110111111111", 
    151 => "11100111000010001101011000000110", 
    152 => "11110110001101011111001111110111", 
    153 => "00010011101110000000000000001010", 
    154 => "11101111000000101111101100101101", 
    155 => "00100110000001001101110100100101", 
    156 => "00011010000101110001001000000101", 
    157 => "11101111000001110000000100010000", 
    158 => "00010011000000001110101000100110", 
    159 => "00000000111101001111111011110101", 
    160 => "11111000000100110000010111111001", 
    161 => "11111001111011111111110001000001", 
    162 => "11010001111111111011100000001100", 
    163 => "11111101000100110001001011010011", 
    164 => "00011001001000100010001000000101", 
    165 => "00001101000000010011001011110101", 
    166 => "11110110000100101110010100001100", 
    167 => "00010110001001000011001011110100", 
    168 => "11101111000010001110101100011000", 
    169 => "11111100110100100000101000000000", 
    170 => "11011010000100111011101111110010", 
    171 => "11111011000101000000000011101000", 
    172 => "00010011110110011111101011101011", 
    173 => "11111000000110010001100111110101", 
    174 => "00101101111111110000111000001100", 
    175 => "11101110110110111001110111111001", 
    176 => "00011100111100110000111100100010", 
    177 => "00001100110100000001001111100100", 
    178 => "00000101111100000000101101000101", 
    179 => "00001110000111111110100000000000", 
    180 => "11111111111110111110000000110001", 
    181 => "11100101111000110000001100011111", 
    182 => "11100111111010111111111100111101", 
    183 => "00100000000111001110001011011111", 
    184 => "00000010000011101101101100110101", 
    185 => "00010100111010001100111000110010", 
    186 => "00001101111011111000001100001111", 
    187 => "00001110000101010001010000100111", 
    188 => "11000010111010110000011000110110", 
    189 => "11011100000000010001000100011010", 
    190 => "00000011000000011110001011111111", 
    191 => "00010011000011000010011100011100", 
    192 => "00001000111001011110110100000011", 
    193 => "11111011101110110100011101001100", 
    194 => "01100100110011110000011000011101", 
    195 => "00010110001111110000100100000010", 
    196 => "11101011001000101110101111101000", 
    197 => "11110001110111001101011100010001", 
    198 => "00001000000000110000101000101001", 
    199 => "11010011110111011111011111011100", 
    200 => "11000101111011000000010000001001", 
    201 => "00000101000000010000011000001010", 
    202 => "11110010000110100000111011101111", 
    203 => "11111111000101011101111100101010", 
    204 => "10111010000001111101101000011000", 
    205 => "11101001000100010000100011111001", 
    206 => "01011000111110110000110110111101", 
    207 => "11101000000101100010000000100010", 
    208 => "00100001111111110001101100010101", 
    209 => "11111100001001110001001111101011", 
    210 => "11100000111111111111010011111101", 
    211 => "11110001111111111111001111110101", 
    212 => "10111100000101110000111100001001", 
    213 => "11110000011110110001001111111001", 
    214 => "00010000111100000000110011001100", 
    215 => "11111011000001101110100100000110", 
    216 => "11111111010101110000010011111001", 
    217 => "11100111000000100000000100000111", 
    218 => "00010001000001110001000000001011", 
    219 => "11010001001100110001111100011000", 
    220 => "01000000000110001110100101001000", 
    221 => "11100010000100010010010011110001", 
    222 => "11110100111110100001110000010000", 
    223 => "00011011001110101101111011111001", 
    224 => "00001001110011111111111100111000", 
    225 => "11101000000010011101111010110111", 
    226 => "00101101110111100000110000111101", 
    227 => "11111111001111101111011111101000", 
    228 => "11110010000000111111100011110111", 
    229 => "11101110111011001011110100010010", 
    230 => "00001101111110010001101001001000", 
    231 => "11111111111100100000001111010001", 
    232 => "00010101000100110000001000010011", 
    233 => "11110100110101110000011111110100", 
    234 => "00000010110000100000000000010001", 
    235 => "11001101111000010001111011101110", 
    236 => "11010001001000000101001110110001", 
    237 => "00111101000010110001000111101001", 
    238 => "00101100000001101101101000111111", 
    239 => "00010111000011101111101100011100", 
    240 => "00011011001000011111101011110011", 
    241 => "11011000111010001110110011111111", 
    242 => "00001101111011000000110000100001", 
    243 => "00110100010000000000011111001110", 
    244 => "11111010001001100000001100111110", 
    245 => "11101001111110010000000000010110", 
    246 => "11101100001000100011101000000100", 
    247 => "00000011000011000001000010101110", 
    248 => "11111001110111111110110100010101", 
    249 => "11001110111011101111100100110000", 
    250 => "00101011111000110000101011110001", 
    251 => "00000111111101110010110011110001", 
    252 => "11001110111111110011001111110010", 
    253 => "11110111110101011111011011110100", 
    254 => "11011110000001100000101111110000", 
    255 => "00000010001001000000001011110000", 
    256 => "00011110111110110001101011110100", 
    257 => "00110011000000100001111100000111", 
    258 => "11001011110100011110110100001101", 
    259 => "11111111111111100000001011111010", 
    260 => "10111101111010001110111011001100", 
    261 => "11111110111101000001010111111111", 
    262 => "11101111000100000010010100011000", 
    263 => "11100000000001100001110011010110", 
    264 => "00100010111111000001001011110011", 
    265 => "11110001110100110001001000001011", 
    266 => "11001011000101110000011000000100", 
    267 => "00011100110111100010100000000110", 
    268 => "11111010110101111110110011101101", 
    269 => "11100000000001001111011111111101", 
    270 => "00001011111011111111111011110101", 
    271 => "11110111110010101101001100001101", 
    272 => "00000001101111111111100111100111", 
    273 => "11000001000111001101100111110100", 
    274 => "10100000000010000000101100000011", 
    275 => "00010111001001110000001011111010", 
    276 => "00010010001011000000010001000010", 
    277 => "11111111111010110000011100000000", 
    278 => "10001100000111111110100011111101", 
    279 => "11100001111110000000011100000001", 
    280 => "01101011111101011111111111010101", 
    281 => "11100010111100101111100011111001", 
    282 => "01100011000010100001011100010101", 
    283 => "00100000000001100010000000100111", 
    284 => "01000110000010000000010011101011", 
    285 => "11011001111101010000110111110001", 
    286 => "11011100000111100000001011101101", 
    287 => "11101011111100110000101011100110", 
    288 => "01110011111101011111000011100111", 
    289 => "11110101111110111110001111111111", 
    290 => "11110011111101111111111011000011", 
    291 => "00001011000101001110010000001011", 
    292 => "01111110111001101110111011010111", 
    293 => "00100100000010011100001000011010", 
    294 => "11000000111111000010000001011110", 
    295 => "11101110000100001101000100000011", 
    296 => "00111110110100011111100111100110", 
    297 => "00010110111011001111000000000010", 
    298 => "11101011001000011110010011110000", 
    299 => "11101100000001100000101011001100", 
    300 => "00001010000000111101111111011000", 
    301 => "11110000000000101111100000001001", 
    302 => "11000000001010101011101000010110", 
    303 => "11111110111110010001000000100001", 
    304 => "00011011111011000000000000010110", 
    305 => "11100011000011011111110100001111", 
    306 => "01101010001100011111101000010100", 
    307 => "11011101000110010001001011111101", 
    308 => "01010100111011110000101011111010", 
    309 => "11100011111111000010101000000010", 
    310 => "00111011111110111110101100110010", 
    311 => "00000001000110111101000000011100", 
    312 => "11101111111101100000000100010010", 
    313 => "11011011000101011101011100010010", 
    314 => "01010111000101011111110100001101", 
    315 => "00000100000010111111001000010111", 
    316 => "01000001000011100000110000011111", 
    317 => "11101101111000010001101011111101", 
    318 => "00011001111100100000000010110011", 
    319 => "00000001110110011111111011111001", 
    320 => "00010101000011111111011100000011", 
    321 => "00100101001010010000110100100000", 
    322 => "00001100000010010001100011001001", 
    323 => "00011110010011101110011000010101", 
    324 => "00001011111011111111110011110111", 
    325 => "11111001001111001110100111110011", 
    326 => "00010000110111010001010111001011", 
    327 => "00100110001001000000011000000011", 
    328 => "00111101000100101111110101001001", 
    329 => "11101000001010011100001100010011", 
    330 => "11011011000101000001010111100010", 
    331 => "00001110001000101110010111110101", 
    332 => "00011111111001111110110100010010", 
    333 => "00010110000110000001000011110010", 
    334 => "10101111001111000010100100010010", 
    335 => "00000010001101001011110011011101", 
    336 => "01000111001101101100111011010101", 
    337 => "00001010000111000101100111011001", 
    338 => "00000100001000111110000011101110", 
    339 => "11110111000001101111000111101001", 
    340 => "00011011111110101111101011000100", 
    341 => "01010010110111100000011111101100", 
    342 => "11001011111100000001111111110101", 
    343 => "00000000111000111011111011111000", 
    344 => "00100001110011011110001111101100", 
    345 => "11100000110010001100111000000100", 
    346 => "11010101000011000010000000110010", 
    347 => "01001011000011101101001000100110", 
    348 => "00011001111111010010011011110100", 
    349 => "00010010101011110010011000001001", 
    350 => "11001110000001101111101100010000", 
    351 => "11011110111100100000011111011100", 
    352 => "11110100111111001101110111101110", 
    353 => "11101010111100001101001011010000", 
    354 => "11110100000011100010010000010011", 
    355 => "11101000111111001110001111101100", 
    356 => "11111011000001011101100110100110", 
    357 => "11001100110111001101111011110100", 
    358 => "00000111000101001110101010101010", 
    359 => "00110101000011011110001101000111", 
    360 => "00000000111100110011001100001000", 
    361 => "11001100110101111010110000001000", 
    362 => "00100100101010000001000000000110", 
    363 => "11011101000011110010001011011001", 
    364 => "00000110000110101110011011011000", 
    365 => "00010010100110010001100000001111", 
    366 => "11101001110011111110011100010111", 
    367 => "00010101111010111100101111111111", 
    368 => "00000001000011100000010011111101", 
    369 => "11000111111000111110110111111010", 
    370 => "11010000000010101010011111111111", 
    371 => "00010101001000100000001111010111", 
    372 => "00100100001010011101111011000101", 
    373 => "11010110101110110000000000001010", 
    374 => "00011110010001011111110100010000", 
    375 => "11011110001000100000010000000111", 
    376 => "11011111000010011101010111000010", 
    377 => "00010110001111011111010111001100", 
    378 => "11100010001010010001111000111011", 
    379 => "11100101110101100010010000010000", 
    380 => "10010010110100010000110111101101", 
    381 => "00111001000010101101001111001011", 
    382 => "00111000111010100000001100010011", 
    383 => "00011100000100000000001000100101", 
    384 => "01100101111110011101110000001011", 
    385 => "11110000000111110000000101000110", 
    386 => "00110101000010110000000111110001", 
    387 => "11000111000101010001001011111110", 
    388 => "11100100111111010010101000000100", 
    389 => "00100100111111110000011011101011", 
    390 => "11101111001000101111011000010111", 
    391 => "11111101001000011011100000011000", 
    392 => "11111100110100000110000000000001", 
    393 => "00010110000001010010000111111001", 
    394 => "00000111111101001110000100000011", 
    395 => "11110110111001010000111000000011", 
    396 => "11000011000010111101001000000000", 
    397 => "10110010000111100001010111110110", 
    398 => "10110110111001011100001000100000", 
    399 => "00000100111101001111111111100011", 
    400 => "11111011000001000001100011110110", 
    401 => "00010110000010111110000100000011", 
    402 => "11011010110110001111110100010001", 
    403 => "00000101000001011110011000010100", 
    404 => "11101010111010101111001111011001", 
    405 => "11110001110101010001100111101110", 
    406 => "11110001000000011110011111100101", 
    407 => "00010110001000000000111111101100", 
    408 => "00100000000101000011110100010101", 
    409 => "00111100000101111101111011011111", 
    410 => "00000100000000101100010111100111", 
    411 => "11100111001101000001001100000000", 
    412 => "00000001000001101110101111100001", 
    413 => "00001001110000001110100111011011", 
    414 => "00110010111010010001011100100101", 
    415 => "11100010111000010000111111101110", 
    416 => "10111100000010100001001000000101", 
    417 => "00001011111001100000011000000100", 
    418 => "00100111000000010010111111011111", 
    419 => "00000110000101011101100111110100", 
    420 => "11000110111011000000101000100101", 
    421 => "00000000110110110010010100100100", 
    422 => "11101000000011111111100110101110", 
    423 => "00110000010110010110011111111100", 
    424 => "01001010111101101101111000001100", 
    425 => "00101101000011011100101011101111", 
    426 => "11100010000010001111011100000010", 
    427 => "11011001000001111111101011011000", 
    428 => "11101101000111110000100000001011", 
    429 => "00100010000001001111111100101111", 
    430 => "11011010111010011111010000100011", 
    431 => "00000000110111010011000100111001", 
    432 => "01110110110000110010000111000001", 
    433 => "00011011000001011101110100011000", 
    434 => "01010000001110011100011000001100", 
    435 => "11001010000011011110100011101101", 
    436 => "01110011000001001100001011101101", 
    437 => "01010111101111001111100100100011", 
    438 => "00100000110111010000011011001110", 
    439 => "11111101111010100000001111011100", 
    440 => "00011011111101101111001100010001", 
    441 => "10110011101110010000011011100100", 
    442 => "00111010111101110000001000011100", 
    443 => "00010011000000110010000011011100", 
    444 => "11101010111011011111010011010101", 
    445 => "11001101000111011111110111111110", 
    446 => "11111110111111011110001011111011", 
    447 => "00100000000010111111111100010010", 
    448 => "11111101000001111110100111110100", 
    449 => "11101000000000000001111011110101", 
    450 => "00011100000111111101111111100111", 
    451 => "00000010000110001110110111110101", 
    452 => "11001111000010110011001100010101", 
    453 => "11110001111001010000010011101011", 
    454 => "00000100111011111110100100001001", 
    455 => "11111001000000100000101000000000", 
    456 => "00001011000011001110110011101010", 
    457 => "00001001000000110000100000000110", 
    458 => "11111000111110011101101000011111", 
    459 => "00000010111001001110100011111110", 
    460 => "00000111111111001110100011101001", 
    461 => "11101010110100111110010011100010", 
    462 => "11101100111111100001001011111111", 
    463 => "11110001111010011110101100011100", 
    464 => "11111100000001000001001111111101", 
    465 => "11101111110111010010001000000100", 
    466 => "00010010110111011101100011001000", 
    467 => "11101000111010000001100111110110", 
    468 => "00000001111100101110001100011101", 
    469 => "00110101000100001111101011101101", 
    470 => "11111010111101110001110011111111", 
    471 => "00100000000100110001011000001001", 
    472 => "11100000110110110010000000011011", 
    473 => "00100010001010110010100100011101", 
    474 => "11101110111001111111011111110010", 
    475 => "11111000111111001110111111011011", 
    476 => "11110000000001011111111100011001", 
    477 => "00011101111011100001110000001101", 
    478 => "00100010000001010000111000001100", 
    479 => "11101110111001111111011100101011", 
    480 => "11101110111010001110001000100100", 
    481 => "00001110000100011111111111110000", 
    482 => "11110011000100000000011011101110", 
    483 => "00010110111100011111100000000100", 
    484 => "11011100000101110000001011101100", 
    485 => "11001111000000011110110111111101", 
    486 => "00011001111110001110001011111111", 
    487 => "00010010111111101111010111010011", 
    488 => "00101000000010001100001100100011", 
    489 => "11101011110011101100101011010001", 
    490 => "00100010111011011110111000011011", 
    491 => "00010111110111101110111000001101", 
    492 => "00011101111011011111101011100111", 
    493 => "11111001111110000001101100000111", 
    494 => "00010110000110111111011100001001", 
    495 => "11110111111110001101101011110001", 
    496 => "00010010000101011111000000001001", 
    497 => "11110000000010101111100100000110", 
    498 => "11110011110010001101011100011011", 
    499 => "00010111111101011111000011101101", 
    500 => "11111011000000100010000000010011", 
    501 => "00010000000110010000110000000010", 
    502 => "00000101000011110000100100001010", 
    503 => "00110000111010110010000011010100", 
    504 => "11011010000001100001010100010101", 
    505 => "11111001111110100001000000001010", 
    506 => "00001011111011011110110100001000", 
    507 => "11101010111110111110110000001110", 
    508 => "11111100111111000000000111101010", 
    509 => "00100100001000111111011000010001", 
    510 => "00100011000000111111100100011001", 
    511 => "11110001001000011100001011010110", 
    512 => "10111100111010110010100011110000", 
    513 => "00101101110000101110010000000110", 
    514 => "00001110000010000000111011110101", 
    515 => "00001000111010110011001111101001", 
    516 => "10111000111011000001100000011110", 
    517 => "11111100000010111111110010111011", 
    518 => "00000101000101001101111100000001", 
    519 => "11101101000010100000110011110001", 
    520 => "01010010011000001111000111111000", 
    521 => "00011001000000010010000111110011", 
    522 => "10110011000000100001010011110011", 
    523 => "00011110111010011111110000011000", 
    524 => "00010110111010011100000111101111", 
    525 => "01000011111001011101110100011100", 
    526 => "00100000001010011101110111001011", 
    527 => "00001101111001100000101100000001", 
    528 => "11101110111000000001000010010000", 
    529 => "11110000110100011111111011010101", 
    530 => "00011100001111111111100011010001", 
    531 => "11110011000111110001011100000001", 
    532 => "11000000111011010000110100000100", 
    533 => "00100110000001111110001000000010", 
    534 => "11010001000000011111100111110011", 
    535 => "11011011111011001111100111110010", 
    536 => "11100100000000100000001111101001", 
    537 => "11011111111111110011110100100101", 
    538 => "10000001000011011110010000000010", 
    539 => "00010000110011010000100111110110", 
    540 => "00010001111110001110000011011111", 
    541 => "00011010110001001111111000100011", 
    542 => "01000010001001010000001011101011", 
    543 => "11110001111100110001111000001000", 
    544 => "11101111000011110000100011111110", 
    545 => "11101000000100110001001111110010", 
    546 => "11011000000011000010001000010001", 
    547 => "11011100111101010000111000100000", 
    548 => "01101100111001110000111000001110", 
    549 => "11010110001010110001010000100111", 
    550 => "00111000111000111101111011111011", 
    551 => "11100100111110110000111000010000", 
    552 => "00000010000100110001000100101111", 
    553 => "00110010110011001101010000010101", 
    554 => "00111110111100110000000011111111", 
    555 => "00011011001001001110010011011110", 
    556 => "00100000001000100000011011000100", 
    557 => "00010001110011111101010000001110", 
    558 => "11111110000000000000100000101001", 
    559 => "00010111110011000010000100001101", 
    560 => "11110000000000001110101100001110", 
    561 => "11101001100110111101010000000111", 
    562 => "00111001001000001110010111110111", 
    563 => "00000001111110001110001011011111", 
    564 => "11001100111110000001000100111110", 
    565 => "00010011001110010001100011111000", 
    566 => "11011010000001001111111111110100", 
    567 => "00011000111111001100010111011100", 
    568 => "00001011110111101111011011110111", 
    569 => "11110110110101001111000000010000", 
    570 => "00100101000001100000100100000100", 
    571 => "11110111000010011010101100011100", 
    572 => "10111010000101110010100111110111", 
    573 => "00011111001111000001101000011101", 
    574 => "11101001111110111110111100000100", 
    575 => "11010111111010000001000111001010", 
    576 => "11000101110010011100101000011110", 
    577 => "00001000101110110011110100000100", 
    578 => "00111111001010110011000101000100", 
    579 => "00000010111110101111010111110010", 
    580 => "00011000111101101110110000000001", 
    581 => "00000100000001110000100000001011", 
    582 => "00001110000100100001110100001000", 
    583 => "11110100111111000011111000100010", 
    584 => "11111111101111110010001011000001", 
    585 => "11011100111001111100000000011100", 
    586 => "00000101000010010000101000010011", 
    587 => "00011110000100100001101111111111", 
    588 => "00111001111100001011010010110110", 
    589 => "01110010000100001100110100010100", 
    590 => "11111111000100001111110000110010", 
    591 => "00010010111011110000111100001100", 
    592 => "11111110000000100010100011011111", 
    593 => "00000100111111000000000111011111", 
    594 => "11011001111010001011100011111000", 
    595 => "00110001000100011100000011100001", 
    596 => "00110001001101111011011111101001", 
    597 => "01010001111110001110000011110101", 
    598 => "00001011001111110000100000110000", 
    599 => "11010010111110010001111000001111", 
    600 => "11001100111111000100100000011110", 
    601 => "11111001001110011111100000110001", 
    602 => "11001001000111111110000001000100", 
    603 => "00001000010001010000001000010001", 
    604 => "11111001110011001111100011101010", 
    605 => "00011011111010011101110111111110", 
    606 => "11001010000110010000110101000010", 
    607 => "00100100000011100000000011101010", 
    608 => "00111000001011010010000100011011", 
    609 => "11110011000110000001110111001001", 
    610 => "00110111110010100000000111111110", 
    611 => "11000111111110011101111111100111", 
    612 => "11011001111111000010110000010000", 
    613 => "00010101000001100010110000110010", 
    614 => "11100000111010000011101100110011", 
    615 => "00011000110101110011110000100000", 
    616 => "11111110111100111100001011111100", 
    617 => "11101000001110001111010100001111", 
    618 => "11101101000011001101111011011000", 
    619 => "00110000001001011101110000100110", 
    620 => "00101111000010000001001111110000", 
    621 => "00010011111110010100110111110110", 
    622 => "11100011001110001111000110011111", 
    623 => "11101011111110100000111100100110", 
    624 => "00001111111010111111101100011001", 
    625 => "00111100001100100010011000001111", 
    626 => "00100011110010110010011010100100", 
    627 => "10111111000000101101100111010110", 
    628 => "11010101111000011110110000000011", 
    629 => "01001000111101000001101011101000", 
    630 => "11000000110011100100011100111111", 
    631 => "00100000000110011110111011001110", 
    632 => "11110011110001011110110111100111", 
    633 => "00110111101110100101100100000101", 
    634 => "00011001000000010100011100101100", 
    635 => "00011010111101010000100111011011", 
    636 => "11101000000010010010101000001101", 
    637 => "11011010000000100001010011110110", 
    638 => "11100101001000100100001100001101", 
    639 => "00000100111110001111101111110101", 
    640 => "11101110101101110001100000010101", 
    641 => "01000000111000001111010111011100", 
    642 => "00010001111101101110101011110111", 
    643 => "00000000000011011110111011100111", 
    644 => "11001000111101010000100111000100", 
    645 => "00110010110101000001010111111110", 
    646 => "11100010000111011100100111111110", 
    647 => "11011111000001000001100111011110", 
    648 => "11111111001001111111001011111101", 
    649 => "11011010111111011101001111110010", 
    650 => "11001010001000000000011000001101", 
    651 => "00001001111000101111110111110000", 
    652 => "00010110101100101110000100100100", 
    653 => "00100011111010111101000000000110", 
    654 => "00001100111111111111100000000101", 
    655 => "11101010000000010000101011110011", 
    656 => "11101110000001011101001111110101", 
    657 => "11011000111010100000101000000000", 
    658 => "00011111001010011101100111100111", 
    659 => "00010110111100110001010011111001", 
    660 => "00000010000001010001000100000000", 
    661 => "00001000111110110000110111110010", 
    662 => "11001110110111001101010000011101", 
    663 => "01000000111010110100011011100010", 
    664 => "00110100000000101111011011111111", 
    665 => "00010101001101000001010011000001", 
    666 => "00001110111010001111100111100011", 
    667 => "00011101000001000001001100100101", 
    668 => "11110110111011001110111100011011", 
    669 => "11001110111101001111001100001011", 
    670 => "00001101000011101101110000100011", 
    671 => "00100001111001110010010100011110", 
    672 => "11100111111111101101101100001010", 
    673 => "11111000001011001100010100001101", 
    674 => "00010001111010011111000000001011", 
    675 => "00001111111001111110111100100001", 
    676 => "11110010010011010000000000001111", 
    677 => "11001001001000111101001000101001", 
    678 => "00010011111001111111100100001000", 
    679 => "11101101000010011111011011010110", 
    680 => "01000000000010101111100011111110", 
    681 => "11111111000111100100001000011101", 
    682 => "11110011001100011110000000000000", 
    683 => "11001101000100010001010000011001", 
    684 => "00110010000111001110111100010000", 
    685 => "11101101111100110000101111110100", 
    686 => "11110011111111100001001100100011", 
    687 => "00001010000011001111010100001110", 
    688 => "11111101000011110000010000010111", 
    689 => "00011111111111110001010000011001", 
    690 => "11011001111110001110101100100110", 
    691 => "00010100000100100000101000100110", 
    692 => "11100110000010100010000100001000", 
    693 => "00010001000011111110110111111010", 
    694 => "00000101111101110001100111010010", 
    695 => "11001010001011111110110011111010", 
    696 => "11100010000110001110100011001110", 
    697 => "00000111111111100000100011111000", 
    698 => "11011000000110001110000100000011", 
    699 => "00010101111100111111011011011010", 
    700 => "10110101110111011111111100011111", 
    701 => "00101110110000011110111111110001", 
    702 => "10111111111001111110100000100100", 
    703 => "01000000111011001100011100100010", 
    704 => "11010000111101101111111000111111", 
    705 => "11010000111011010101001011110001", 
    706 => "00100111010100001110011111010110", 
    707 => "11010001000101010000000000000001", 
    708 => "11111101001000000000101000000010", 
    709 => "11011010001101111101111100011010", 
    710 => "11010001111101011110100101000011", 
    711 => "00001110111010010000110011111111", 
    712 => "01001111111000111111010011101011", 
    713 => "10110001000011111101100100000001", 
    714 => "10101110000101110000100100000000", 
    715 => "11010000000010000000101011011110", 
    716 => "01001010000010100000111000011001", 
    717 => "00101000111000101101010100101110", 
    718 => "00010100111101100001100011101010", 
    719 => "00011011110110100011001011111100", 
    720 => "00101101110110101111101011100001", 
    721 => "01000111000101101110111000101101", 
    722 => "00010001001000010000001000011011", 
    723 => "11110100111101011110000100001000", 
    724 => "11100000111110110000100000000011", 
    725 => "00100010000110110000100110111111", 
    726 => "11010001000100110000110011010110", 
    727 => "11000001001010001111100110101001", 
    728 => "11110100011001000000011100101100", 
    729 => "11011100010010011100001100110001", 
    730 => "00001100001010101110000100010110", 
    731 => "11101101001101001111011100100011", 
    732 => "11000000000110001111110011101001", 
    733 => "00011111000000100000101100110000", 
    734 => "11011100000100111101010111111111", 
    735 => "11110100110101011111010100000111", 
    736 => "10111100001111010001101100111001", 
    737 => "11101000110100101110011000100000", 
    738 => "00111010111101011111010100001010", 
    739 => "11011110110111010011010011111010", 
    740 => "11001000001000001111011000000101", 
    741 => "11111111111101100001111111111010", 
    742 => "11001110000100101110011000101100", 
    743 => "00001011111111000001011111100100", 
    744 => "10110101110110101100010000011101", 
    745 => "00100000000100100000111100110110", 
    746 => "00010101000000101111110111100010", 
    747 => "11100111111011010100000000101101", 
    748 => "11111001000110000001010111100000", 
    749 => "11110000001001111101100011101110", 
    750 => "00010010000011001111101100001010", 
    751 => "00010101111111001111011000001011", 
    752 => "11000100001011000110000100111111", 
    753 => "00011001000011110101011100001010", 
    754 => "11011111110000011101010011000011", 
    755 => "11101100000000011101101000000010", 
    756 => "00011001000011101110110000000001", 
    757 => "00111111001000111110110000010000", 
    758 => "00101011111011010001100100000011", 
    759 => "11010001000001101111111100010110", 
    760 => "00000001111011001101111000011100", 
    761 => "11000111000001111110111000100111", 
    762 => "00101100111111001111011011111111", 
    763 => "11101101000001110001001000100110", 
    764 => "00010101110111101111011000011010", 
    765 => "11100110000101111111010100000001", 
    766 => "01101000000001001111100100011001", 
    767 => "11101111000000011100010111011100" );

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

entity ReadA123138_weights_0_5_31 is
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

architecture arch of ReadA123138_weights_0_5_31 is
    component ReadA123138_weights_0_5_31_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA123138_weights_0_5_31_rom_U :  component ReadA123138_weights_0_5_31_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

