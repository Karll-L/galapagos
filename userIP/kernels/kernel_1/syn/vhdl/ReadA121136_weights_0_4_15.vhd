-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA121136_weights_0_4_15_rom is 
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


architecture rtl of ReadA121136_weights_0_4_15_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11110000111000010010101111011111", 
    1 => "11100100101111000010011111111111", 
    2 => "11101011110111000001000100101111", 
    3 => "11110110000111101111001111110001", 
    4 => "11000111000001101111000001100011", 
    5 => "00100011000001101110110100001110", 
    6 => "11100110111011101110111011111101", 
    7 => "11110110111110110001110100010100", 
    8 => "01000101110000100000010111110010", 
    9 => "00010010111001001110100000100011", 
    10 => "00000110000011011101101000011111", 
    11 => "11010111000010110001001100011100", 
    12 => "11111111110111001110110100000100", 
    13 => "00010111111111000010111000001001", 
    14 => "00001001111110010001111000000011", 
    15 => "00000100000010101111010100010001", 
    16 => "11101111000001111110110100100010", 
    17 => "10111100001001000010101000101101", 
    18 => "11000001111100100000110100011110", 
    19 => "00110000000001101110100100011110", 
    20 => "00100000000001000010110000000000", 
    21 => "11110001000011111111010100001000", 
    22 => "00100001110110111110011111011010", 
    23 => "00010011000110101110110011101101", 
    24 => "00011000111111100000101011100000", 
    25 => "00000010111101000001011000011011", 
    26 => "11000011111110010010111011000010", 
    27 => "00010001001011011011101000001101", 
    28 => "00001100000110010001000011110011", 
    29 => "00001100111011001111001100111101", 
    30 => "11011100000011010001100010101000", 
    31 => "00010111110011110000111011000110", 
    32 => "11111110000001110000111111110110", 
    33 => "01000010001100000000110000000000", 
    34 => "00000110010010100000000000010101", 
    35 => "11000000110010001101100000000101", 
    36 => "00101100111101100000011110101011", 
    37 => "11010101111111000001001100101010", 
    38 => "11100100000010001111101100011111", 
    39 => "11100001111111101111011010111110", 
    40 => "00111111010011001010101111111101", 
    41 => "00001111001010001111100111110010", 
    42 => "11100010110111000001100011110011", 
    43 => "00010101001010011011001111001011", 
    44 => "00000100111011010000110011100101", 
    45 => "11011010000101101100111011000111", 
    46 => "11010110001001001111100100011100", 
    47 => "11001001111111110001011100010101", 
    48 => "00010001111111000011000011101101", 
    49 => "00000100111001100000011000000010", 
    50 => "01000110111100001111010000010001", 
    51 => "11110011110000011110001011111101", 
    52 => "11010111111110110000111101100111", 
    53 => "00001110000101000000000100100100", 
    54 => "11010001111011100000010100001111", 
    55 => "11111100110011001110000110101111", 
    56 => "11011010000101001111101011100011", 
    57 => "01010111111101000010000011101101", 
    58 => "11100011000011110000011100010100", 
    59 => "00100010000110000001011011111010", 
    60 => "00001011111100111111001111011110", 
    61 => "00110101111001100011001011111001", 
    62 => "11100100111110010000010011101111", 
    63 => "11110000110101100001001111011001", 
    64 => "01001001111101111110011100100111", 
    65 => "11101110000111010001100100011011", 
    66 => "11011101111110101111001011110100", 
    67 => "11110101000001001011000100100010", 
    68 => "00010000110111110000100100001000", 
    69 => "00110000111010100010000011100110", 
    70 => "00101011111011100010101010110011", 
    71 => "00100001001001100000100000001111", 
    72 => "00001101001000010000100000000100", 
    73 => "00001110111011111101100100011000", 
    74 => "00011010000100001110101011111101", 
    75 => "00000010000100001111000011010010", 
    76 => "00001111000101101110110000011010", 
    77 => "11110101001110001111001100101010", 
    78 => "00001111111011110000001100011101", 
    79 => "00010011111011110001110111110101", 
    80 => "00000100111010110001011011001001", 
    81 => "11101101111100010100100000001011", 
    82 => "11110110111111111111000111111101", 
    83 => "00000110001000011110101011100110", 
    84 => "00010010111011101111100100001101", 
    85 => "11111101111101001111010111100011", 
    86 => "10110110000110001100110000100111", 
    87 => "00011010111000011100100000000111", 
    88 => "11010101111111000010011011110110", 
    89 => "00011110000101111111011010111010", 
    90 => "00011101001001000001001000001000", 
    91 => "00001000001011111101111111011111", 
    92 => "11101000001100100000000000011000", 
    93 => "00100101000010010001011011101001", 
    94 => "11111111111100001111101011110111", 
    95 => "00110000111110111111010010111111", 
    96 => "11110010000100001110000000100100", 
    97 => "00010010111110101110111111001001", 
    98 => "11100111111110010001010000000110", 
    99 => "01010000111110010010100111110000", 
    100 => "00101000111101000000101011010011", 
    101 => "00001101001010110001101000011100", 
    102 => "11011100111110011110100100011011", 
    103 => "00010001001000011111111011111001", 
    104 => "00010110001000001111101011110000", 
    105 => "00000111111000000000101000001001", 
    106 => "00001101111000001111010011100110", 
    107 => "11110101111101001110100111111000", 
    108 => "01010010111111001111101111111010", 
    109 => "11100010111111011110000110100111", 
    110 => "00001111000001000001010000101000", 
    111 => "11111111000110000000011100001111", 
    112 => "11100110000101011101010100110011", 
    113 => "01011011000010110001000100101111", 
    114 => "00000000001000111100011101011101", 
    115 => "11000001111100010000010111111001", 
    116 => "11110101000011110001111111111010", 
    117 => "11001100000010000001011011101001", 
    118 => "00000101111110011110011100001001", 
    119 => "00010111111101010010001100000000", 
    120 => "11110111111110111110110111101000", 
    121 => "10101000000001100000001011111010", 
    122 => "00011000111111011111100111101110", 
    123 => "11010000111010101111110001000110", 
    124 => "11101110111001111111001000001110", 
    125 => "11011101111100010010000000010000", 
    126 => "11110000001000101111011110011011", 
    127 => "11000001111110011110110010111000", 
    128 => "00010110111010010100101100011100", 
    129 => "00100000000000111111000100001100", 
    130 => "10100101111000001111000011100000", 
    131 => "00001100001110101011110111101000", 
    132 => "11110101000101000000111000011001", 
    133 => "00100100111100100000000000011000", 
    134 => "11101111111011111110010011100100", 
    135 => "11011010001001011100101011101010", 
    136 => "11011010110100110000010011100000", 
    137 => "00010110110111100001110100111000", 
    138 => "11100111111111101111010111101111", 
    139 => "11001110000010011111100100100001", 
    140 => "00100100111011011111011111111011", 
    141 => "00001100111000101110000100100100", 
    142 => "00001110111110010001110100000101", 
    143 => "11011001111000000001101000001111", 
    144 => "11001101000010010010100100010110", 
    145 => "11101000000010110000001100011010", 
    146 => "00010011000111101110011000000110", 
    147 => "00000001111100100100000111101101", 
    148 => "00011000001010100010000001000001", 
    149 => "11011110101110100011100111011101", 
    150 => "00001010000101000001111011101011", 
    151 => "10100101000111001010010100010011", 
    152 => "11110011111000111111111100000010", 
    153 => "00010111111111001101010111100000", 
    154 => "00101000111111101110001011111000", 
    155 => "11111101111100010000110011101101", 
    156 => "00000001111001110001001011011011", 
    157 => "00000000111100101101101111110000", 
    158 => "00100010111101111110110100000101", 
    159 => "11110110000000111101010100001111", 
    160 => "11111010000101101110110011110011", 
    161 => "11011101000101001110100100000101", 
    162 => "11111111000100001110011100010000", 
    163 => "11101000111011110000000111001111", 
    164 => "11011100000000101110001111101101", 
    165 => "00000100111110001110001000010111", 
    166 => "11101111110001010000111111100100", 
    167 => "11010100001000001101000011111110", 
    168 => "11011111000000111111110111100101", 
    169 => "11101101001111001101111111110011", 
    170 => "00011000000010000001111000000101", 
    171 => "11100011000100000001010101111011", 
    172 => "11101101000001011101100100100110", 
    173 => "00100010111111011101010011100000", 
    174 => "00100000001010001111001111011010", 
    175 => "11101000000011110001101000011111", 
    176 => "11010010111111001111100100110000", 
    177 => "00000010000111000000111100110110", 
    178 => "00101111111110010100011000010011", 
    179 => "00001010001010110001111011101011", 
    180 => "11100010000110000000010000101010", 
    181 => "00010000001101000000110011100101", 
    182 => "00010100001010011100011100001011", 
    183 => "11101100000100011111000111111100", 
    184 => "11111010111011111110001111110001", 
    185 => "00100101001001001110010011100010", 
    186 => "00011101000001011111011011010000", 
    187 => "11110100101001001111000100010000", 
    188 => "00110000111110000001111000100101", 
    189 => "00001111101000110011011000111011", 
    190 => "00100011000010000001010000101010", 
    191 => "11101111111110101100000000001110", 
    192 => "11011111110110111111010111111111", 
    193 => "00001000101101001101000100011111", 
    194 => "00000100111010000011111101010100", 
    195 => "11001000111000101011010101000101", 
    196 => "11101111000101110000011100101101", 
    197 => "00100111000101100001111000100111", 
    198 => "11001110111001110000010100100000", 
    199 => "00001110010010010010001001000011", 
    200 => "11100000000011000001111011101001", 
    201 => "11110011000010001111000011111001", 
    202 => "11111011000011111110011111010010", 
    203 => "00001001111000001110111000010011", 
    204 => "00011100000100101101100001001011", 
    205 => "10111000110100001110101000111010", 
    206 => "10101100000011100100001011100101", 
    207 => "00110010111001100010100111100100", 
    208 => "11011011111100010011110111010010", 
    209 => "01000100111000100010100111001001", 
    210 => "11010100111010110010110100011000", 
    211 => "11101101111110100001001000100110", 
    212 => "00101000001001100000111011100010", 
    213 => "11110001111011000010011011110000", 
    214 => "11100100000010101111001100100001", 
    215 => "01000101000100100000101111011101", 
    216 => "11111000000101000010011100010100", 
    217 => "00010000111001011101101000001001", 
    218 => "11010100001000101100110000110000", 
    219 => "11011010110101011100011100101110", 
    220 => "00010010000001110000001111101110", 
    221 => "11111101111001101111111100011101", 
    222 => "11100011111101101110000100010000", 
    223 => "11100010000001010001010010110011", 
    224 => "11100001000000101101010001100110", 
    225 => "00110011000001111100110111101100", 
    226 => "00010011000001100010111101000110", 
    227 => "00010101111111011110101100100000", 
    228 => "00011100111011000001000000101010", 
    229 => "11110110001010111111110100010001", 
    230 => "00001000111110011111011111011010", 
    231 => "00010100110000101110000011101010", 
    232 => "11101000111001111011010100000010", 
    233 => "00111010000011010000110011010001", 
    234 => "00101010000000010000000011111001", 
    235 => "00111010010101011111100000101110", 
    236 => "11111101110110111110100011011100", 
    237 => "00000111000000001011110111110011", 
    238 => "11101111111010110010101111110101", 
    239 => "00101010111110101110100111010111", 
    240 => "11001001110101001110101000001001", 
    241 => "00010001000000001110001011101101", 
    242 => "10001011111110000000110011011011", 
    243 => "00001111111010001001110011100110", 
    244 => "00010110001010100010010000011101", 
    245 => "11110100111001110001110100000010", 
    246 => "00000101001010000000000100011111", 
    247 => "00001111110011000100001100100000", 
    248 => "11011111000111101111111100100010", 
    249 => "11111110111101001111100000100101", 
    250 => "11111111111111000000011111110100", 
    251 => "11011000000000100010100000001001", 
    252 => "00011010110111000001010100010011", 
    253 => "00000110111110100001101100000000", 
    254 => "11110001001010111111011000001110", 
    255 => "11011100000101101100110000010010", 
    256 => "00000000111101101111011000110010", 
    257 => "00011110111111010001010111101111", 
    258 => "00100001111110001110101111111110", 
    259 => "11101000111011010000101011100110", 
    260 => "00000001111001010001111000001100", 
    261 => "11111011000111011111011011110011", 
    262 => "00000010000101000001011000100001", 
    263 => "11111100000010110011101011101010", 
    264 => "00001000111100100010010011101010", 
    265 => "11111011000000000001110011110000", 
    266 => "11000100001000010001101011111001", 
    267 => "00101100110000100011100100001101", 
    268 => "11010000111001000000111111011000", 
    269 => "00010001111011111111100000100001", 
    270 => "11011001111111000001101011110110", 
    271 => "00110000000111001111010111110001", 
    272 => "11011100111000011111101000011010", 
    273 => "11111011000001011110111000001111", 
    274 => "00010110111010001111001000001100", 
    275 => "00000110111111111100111000010110", 
    276 => "11111110110111100000100000010101", 
    277 => "00101000110100001111110011011110", 
    278 => "00000000110111111111110000000001", 
    279 => "11101100111100001100111111110001", 
    280 => "00101100000110001110001100001100", 
    281 => "11100011111111110001111000100010", 
    282 => "11110011111110010011000100100011", 
    283 => "10101110001001100100001010100001", 
    284 => "00111000111111011101111111111010", 
    285 => "11111101000010110000110000110000", 
    286 => "00010110111101101110010000000000", 
    287 => "00000001111101111110100011101100", 
    288 => "11011100000010010000011000011001", 
    289 => "00011010111110010001100011100101", 
    290 => "11011100001000001111101011110010", 
    291 => "11111101110110101101011011011101", 
    292 => "11111000111110000000101111111000", 
    293 => "00100011111011111110100100011110", 
    294 => "11111001000000100000011111011010", 
    295 => "00011010111010101111110011011000", 
    296 => "11111010000000000000101100110001", 
    297 => "11110101000010100000011000010111", 
    298 => "00100111111100100000110011111110", 
    299 => "11110110000000100000001011111001", 
    300 => "00011011111110011111001111110111", 
    301 => "11111101000000101111000111111110", 
    302 => "00010011000101010001110100010010", 
    303 => "00101111111000110000100110110101", 
    304 => "00001101111111010001111111111000", 
    305 => "11100010111010101111101100011100", 
    306 => "11111101001001001110111100010101", 
    307 => "00000011111011101111101111111010", 
    308 => "11100111000110001110111001000111", 
    309 => "00010101110011111100011111111110", 
    310 => "00111110111110111111110000000101", 
    311 => "11111010000010101111000100000101", 
    312 => "00010111111101110001000011110101", 
    313 => "00000101111111111110101000000101", 
    314 => "11011011000010100001001111111111", 
    315 => "10110001110110101110010000001010", 
    316 => "11111110000101001111101100000101", 
    317 => "11101100000101110000100000000001", 
    318 => "11010101111111010000111111111010", 
    319 => "11000001000101000001001011110111", 
    320 => "00001111110010100011111000001011", 
    321 => "11101110000010100001011000001001", 
    322 => "11011010000111010010011100110001", 
    323 => "00001111000000010000011111101101", 
    324 => "00011010101101000010101001000101", 
    325 => "11111000110100110001101011010001", 
    326 => "11101010111001011110110000110000", 
    327 => "00100000000110100000011100000111", 
    328 => "00001011111111011010101111100011", 
    329 => "11000110001001100011100111101101", 
    330 => "00010100001000101100111011101010", 
    331 => "00011110000000010001000110111001", 
    332 => "00010101001111110101001001001101", 
    333 => "00001000110110100010100000000010", 
    334 => "00001011000110001111101100010110", 
    335 => "11100100000000001110011100110011", 
    336 => "00001101001001111100111111001001", 
    337 => "11110001000110010001000100001100", 
    338 => "11111101000100110010000000000100", 
    339 => "11011100110110110000011111111100", 
    340 => "11011000000101110000001011110100", 
    341 => "00001011001011111110000111101001", 
    342 => "11101010000001110000100100100101", 
    343 => "00100101000100010010010100111010", 
    344 => "10101000111111011010010111110001", 
    345 => "11101111110111111101011000011101", 
    346 => "00000111111011011101101011110011", 
    347 => "10110001000101011011111101011010", 
    348 => "00111001000110001111000111101000", 
    349 => "11000001010001001101011100000110", 
    350 => "11101101001001001111001111011110", 
    351 => "11011001001000010101001011110100", 
    352 => "00010000001100000100001100100001", 
    353 => "00001001001000011111110000000110", 
    354 => "00010110110110110011101111001000", 
    355 => "11110001110100100000001111100100", 
    356 => "01000111110111111110011111111001", 
    357 => "00011000111110100001110111100001", 
    358 => "11100110111000001111000111101101", 
    359 => "11000111001100001101010111111111", 
    360 => "10110111110101100100101000000010", 
    361 => "00011011111001010001000000010010", 
    362 => "11010011111110000010110100010011", 
    363 => "10111010000111000000110100011011", 
    364 => "11101010111011000011000100000011", 
    365 => "00110101110101111111001011001010", 
    366 => "11110110000111011110110100010111", 
    367 => "01100100101011011011111000000010", 
    368 => "11101000111101110001000100100101", 
    369 => "00001011000111100000010111101001", 
    370 => "11000110111101000010100000110001", 
    371 => "11100010000101101110100100001100", 
    372 => "00000110111101100011011000001101", 
    373 => "11011000000010111010110100010001", 
    374 => "10111100000000111110111100011111", 
    375 => "11010011111100001100101100000100", 
    376 => "11011101111001110000011000000110", 
    377 => "11101010000010011110101111111111", 
    378 => "11011100000101111110101100111000", 
    379 => "00010000000011111100100111111001", 
    380 => "00011101111110101111011111011011", 
    381 => "11101110101100100001010000100001", 
    382 => "11101111000111111111100100010110", 
    383 => "11111100111010100000101011000010", 
    384 => "01000111111100101110101111111100", 
    385 => "00011001110011110000110000110011", 
    386 => "10010101111011001100101000000010", 
    387 => "00011010110000001101100010110010", 
    388 => "11000010111100000000110101000110", 
    389 => "00010101111110010000101111100111", 
    390 => "11101000000010000000110111101101", 
    391 => "11101101111111110001111110111000", 
    392 => "11110111000101000001011100011111", 
    393 => "00010011000110110001000011110000", 
    394 => "00001000101111001110001111110001", 
    395 => "11110001000100101110011011100000", 
    396 => "11111010000011100000110011111100", 
    397 => "00101010111011110001001011100111", 
    398 => "11001000111110001110101000101000", 
    399 => "10110101000101011111000011001110", 
    400 => "10100101010000001110010000011101", 
    401 => "00110001111111111111011000110001", 
    402 => "11010010110001110010100111110111", 
    403 => "11011110000011000011010000011011", 
    404 => "11111101111100001011010011001111", 
    405 => "11111101101111011111010011100100", 
    406 => "00100011110110111110010011111110", 
    407 => "11100001000100110000010111110000", 
    408 => "00100100001111111101101111011100", 
    409 => "00111010000100001100101000111110", 
    410 => "00011010111001101100010011110011", 
    411 => "01000111001001000000011011101101", 
    412 => "11101111111101111111110000100100", 
    413 => "10011011101111010001100011001001", 
    414 => "00101011000101011111000111011100", 
    415 => "11101100010101010010010001001010", 
    416 => "11110101001001101100100111010110", 
    417 => "00101011111111100001001011101000", 
    418 => "00101001010001001111001100111011", 
    419 => "11100010000100111111010011000111", 
    420 => "11111101000100110001011011101110", 
    421 => "00011111111101000100010000011100", 
    422 => "00111111111111100000110011000000", 
    423 => "00110101111010000001100011011001", 
    424 => "11110010111100110000101100101100", 
    425 => "00100011000011100000011011101101", 
    426 => "10101111001110101111101000001001", 
    427 => "11110101010101011110111100011100", 
    428 => "11101010110111101111000100001010", 
    429 => "00100111111011000001101111101111", 
    430 => "11001110001001011111001000111001", 
    431 => "00101101111100011111000100000101", 
    432 => "01000011111111111110011111011010", 
    433 => "00111010001010001001100011101111", 
    434 => "11001111001001010111111011010100", 
    435 => "11111010010010111100010100101101", 
    436 => "11111000010000110000110011111101", 
    437 => "11111111000111001101001000001111", 
    438 => "00001010111111011101101100100010", 
    439 => "11111100001101110010001100110000", 
    440 => "11011001000101011110110011011100", 
    441 => "11010011110010011011111100011011", 
    442 => "01000010001100100000101001001101", 
    443 => "10100110110111000001011101110110", 
    444 => "00010011111111100001110000100011", 
    445 => "00110010110111011111001000100000", 
    446 => "00010000001000000010010111100110", 
    447 => "11010010000011001100001111111010", 
    448 => "11110010111101110000100011111110", 
    449 => "00110110000000110010000011100001", 
    450 => "11001000111000110001111000010011", 
    451 => "11011110000110111111111100010110", 
    452 => "01000100111001001111110100100111", 
    453 => "11011101000100111111100011100100", 
    454 => "00001001111001100000101111101011", 
    455 => "11110001111011111111110111100101", 
    456 => "00010011111011110010001000010100", 
    457 => "11111000111000000000001000000101", 
    458 => "11101011111000110001100111011000", 
    459 => "11111001000010101111000111110101", 
    460 => "11110011111101000001001011001111", 
    461 => "00010010000011011110111100001001", 
    462 => "11110110000100000011011000001100", 
    463 => "00001101000001011110101100001010", 
    464 => "00000111000101011111100011110011", 
    465 => "11110101111010001111110111111010", 
    466 => "00001101000101001111010000001011", 
    467 => "11100101000111110000010100000010", 
    468 => "00010101111001101011110011011010", 
    469 => "00011110000001111111000011110010", 
    470 => "00001011000111101110010100010110", 
    471 => "00111000111100101110010011101101", 
    472 => "00010100001011010010111111111011", 
    473 => "00010100111001001101111011110010", 
    474 => "11101111000011100001000011100011", 
    475 => "00101001110110011100101111101011", 
    476 => "11010100000101011101100000001111", 
    477 => "00000101101111110011101000101011", 
    478 => "00001010110011111100100111111011", 
    479 => "01011110001001111111010100011011", 
    480 => "11101001000010010000100000011001", 
    481 => "11110111111010111111011111110110", 
    482 => "00000101111011010000011111110011", 
    483 => "00001010000001101110010100000110", 
    484 => "00101001111010010001001111101101", 
    485 => "00000001110011110011010111100010", 
    486 => "11111110111010111111011111111000", 
    487 => "00011100001011101110101100101100", 
    488 => "00001011111000110000000100000100", 
    489 => "00011000111110000000011000000000", 
    490 => "00011100001010101100110100001100", 
    491 => "00100101111100110000000111101110", 
    492 => "00110101111111100000001000000100", 
    493 => "00110100010000001110011001000011", 
    494 => "00101100000101011111000011111111", 
    495 => "00100111110100011111111000000001", 
    496 => "11111111000010101111110100010010", 
    497 => "00001001111001001111100000011010", 
    498 => "00001101111011110000011011100111", 
    499 => "00100011000011110010100100001110", 
    500 => "11010010111001010001100000000000", 
    501 => "00001000111011010000010100000111", 
    502 => "11111011111111101110101000000011", 
    503 => "11100110111011011110110000001010", 
    504 => "00100111111111101111010000100111", 
    505 => "00011100010010101110011000011111", 
    506 => "01011001001110111111101000101111", 
    507 => "11010011110101001011110000010001", 
    508 => "11111010111101111111110111111001", 
    509 => "11100101111100101111010111111111", 
    510 => "11101010000100101101010100100010", 
    511 => "11100111001000011100010011100000", 
    512 => "00011010000100111111101100011100", 
    513 => "11101100111111111101100000000100", 
    514 => "00000000111000000001001000000111", 
    515 => "00010011000011001110001100011011", 
    516 => "11110111000100010000000000011010", 
    517 => "00000100111110100001000111111110", 
    518 => "11011110000001010000111011010110", 
    519 => "11011000111010001101001111111011", 
    520 => "10111100111001011110011011110000", 
    521 => "00010101110101101100101100010100", 
    522 => "11100110000011000001011111110100", 
    523 => "00101010111101110010000000100001", 
    524 => "11100101111000100000110100111011", 
    525 => "00010100000110111111001011110000", 
    526 => "11101100000001111110000000010010", 
    527 => "00110001111010101101101011111010", 
    528 => "11110000111011011101111011100000", 
    529 => "00010001000011111110011111001110", 
    530 => "00001100111111101101010011111001", 
    531 => "11101111000010110000000011101111", 
    532 => "11001100000111111100100000001011", 
    533 => "01000000111100100000110000000001", 
    534 => "00000010111100000000011000000010", 
    535 => "00001000110101111101111000001011", 
    536 => "00011110000100101111110000011011", 
    537 => "00011111000011110000100000000100", 
    538 => "11111001000000110001100111010110", 
    539 => "11111111111111011110111000001111", 
    540 => "00000111111111101101111001000110", 
    541 => "00001111000101001111111100010000", 
    542 => "00000001111010101110110111111110", 
    543 => "11111101000101100001100011100010", 
    544 => "11101001000000001111011100011010", 
    545 => "00001100000111101110100100100000", 
    546 => "00101101001010000000001100011010", 
    547 => "11100011001110100010001111111001", 
    548 => "00101001000000101101111000000100", 
    549 => "11010100111001110000100011001111", 
    550 => "11110111000010110000001111101011", 
    551 => "11101001000111000001110111101111", 
    552 => "11011101110101111111011000011110", 
    553 => "00010110001100111011111111010000", 
    554 => "11110100111010000000010100001101", 
    555 => "11011111110001000001000011101001", 
    556 => "00000111000011000000000000010111", 
    557 => "00100110001001010011001111011111", 
    558 => "00110011000101101100111111100101", 
    559 => "11011000000001011100000000000100", 
    560 => "11110101111101000010010000010111", 
    561 => "11110110111110100000001001010100", 
    562 => "11000001111000101101111011010001", 
    563 => "11010011000101100000100100001011", 
    564 => "00001101111010010000011111101010", 
    565 => "00001101001000000010100010111100", 
    566 => "00010110000101101111010100010101", 
    567 => "11100010111101101110000100101100", 
    568 => "00000001111001001101011010101100", 
    569 => "01001110110010001101101111111100", 
    570 => "00010011111110101101001011101010", 
    571 => "00000000001000000001000111100110", 
    572 => "00000111111110110000001011011011", 
    573 => "00001111111000001111111111100101", 
    574 => "11100110111011001110001100000011", 
    575 => "01001010111011010101100111110101", 
    576 => "01001101001000011110110011100001", 
    577 => "11101111101011110101110111111011", 
    578 => "11111011000011110100110111000010", 
    579 => "11001110000010001101001111001111", 
    580 => "11111101000000001001111000000101", 
    581 => "11111111010001010001000100000001", 
    582 => "10101111110001111111101011110101", 
    583 => "11000111011111011101001111010011", 
    584 => "00000111000110100001101100011001", 
    585 => "00100011001011100011001000111010", 
    586 => "00100110111101010011010111100010", 
    587 => "00100101000101101111010110001111", 
    588 => "11111010111110111101000110011110", 
    589 => "11101001000001110001111000011000", 
    590 => "00000010001011010010010000000111", 
    591 => "10100001110101111111010011110010", 
    592 => "00110111110000110010000011010010", 
    593 => "11111100000110111110010100010100", 
    594 => "11101010111011110010001000001010", 
    595 => "00001010000001101110011000011001", 
    596 => "10111101111010011110010101001110", 
    597 => "11110101111011101100100011000000", 
    598 => "00011111111001111110011011110010", 
    599 => "01001001000100111111000000001000", 
    600 => "11101111000100101111011100110010", 
    601 => "00011111111001110010011011100000", 
    602 => "00000111000110110000000100010011", 
    603 => "11001010000100010000100011101001", 
    604 => "11011110000011001110010000011100", 
    605 => "11110000000000010011000101001010", 
    606 => "00001101000001010011011111100101", 
    607 => "00001101000001101100001011110011", 
    608 => "11010100001000101110010100110010", 
    609 => "11000111000101110001100101000101", 
    610 => "11101101111111000001000011110011", 
    611 => "11110000010011110001111000110011", 
    612 => "11010110000000101101111000010000", 
    613 => "00011010000110001111111011100011", 
    614 => "00011110111110000001001100101101", 
    615 => "11110101000011100010100100001101", 
    616 => "11111100001001001110000100101101", 
    617 => "00101011001000011111010100001110", 
    618 => "11111110000010110011011011011010", 
    619 => "11111101101000101110010011111100", 
    620 => "00100011000011011110101011111101", 
    621 => "11110111000001110001101100111110", 
    622 => "11001001000101011110101011100001", 
    623 => "11110001111111101110100011011001", 
    624 => "00010000110100101110111111111010", 
    625 => "00010010000000101110111100000001", 
    626 => "11111010000010111101100111011111", 
    627 => "00101100111000011110110000010000", 
    628 => "00010001111001011101101100000111", 
    629 => "00101111110000111101111100011011", 
    630 => "11010001000001001101001000001000", 
    631 => "11110111000001111011100111111001", 
    632 => "11101001001100101100110111100000", 
    633 => "00000010001010110100111000011000", 
    634 => "11011001111010111011010101000111", 
    635 => "11011011010011100000000011111110", 
    636 => "11100001001100001110111110110001", 
    637 => "11110000000101100010011100111101", 
    638 => "00011000111110000001011111011110", 
    639 => "11110101010010111100101111101110", 
    640 => "00001001111111011111011000101101", 
    641 => "11111000111101010001111100001011", 
    642 => "00001100111111000010101100001011", 
    643 => "11111011111111010000001110111100", 
    644 => "11110101111110101100100011010111", 
    645 => "11011111000001100000011111011011", 
    646 => "00000111001001101110011011111011", 
    647 => "11100111000011100001001011110100", 
    648 => "00100101000110010000010000001001", 
    649 => "00000111000100000000100000000101", 
    650 => "11101110000010111110110111111000", 
    651 => "00001101000001001110001011111101", 
    652 => "11111011000110111101101000011001", 
    653 => "00000010110111000001101000011110", 
    654 => "11011011001000100100011111110101", 
    655 => "11110111111001010010000011010110", 
    656 => "11111000001000110000001111101100", 
    657 => "11111010111001011011111111110100", 
    658 => "00000111111100011111100100100100", 
    659 => "00110011001011110001010011111111", 
    660 => "11111010000000110100000011001001", 
    661 => "00100001000100010001101111111100", 
    662 => "11110010001000010000111111100011", 
    663 => "01000010111001110010011011011000", 
    664 => "00001110000000110011010100010101", 
    665 => "00011011100001010001111000100110", 
    666 => "11100100001000010001011111101010", 
    667 => "00011111001000111111101111110010", 
    668 => "00000101110111111110111100001110", 
    669 => "00100100001010010000100111111101", 
    670 => "11111011000000010000011100000000", 
    671 => "00000000111001000010010000011101", 
    672 => "10110011110001111111101100101010", 
    673 => "01000010111110100001011000111000", 
    674 => "11101011000110011110010011101100", 
    675 => "11011110000111010010011100011111", 
    676 => "00111101000001111101111100101100", 
    677 => "00011110111011110000011100010001", 
    678 => "00100011111101111111111011100110", 
    679 => "00111011111110110010001000000101", 
    680 => "11011001000001000001001100001001", 
    681 => "00011110111000100000101000000101", 
    682 => "00000010111000110000110011101000", 
    683 => "00100110001001001100110111100001", 
    684 => "11011011000001011111010000000010", 
    685 => "10110111000000011110000011101001", 
    686 => "00011111110101000010001100010001", 
    687 => "00010101000001011101100100001111", 
    688 => "00001110111001111100000011110001", 
    689 => "00001101000001000001001011110011", 
    690 => "11000101111000010110001100000100", 
    691 => "00101110111001111101000100001100", 
    692 => "00010011000000000000000100101011", 
    693 => "00010010111111010000111011011010", 
    694 => "11101011000000101111111011110001", 
    695 => "00110110000111100010011111110100", 
    696 => "11111101110010001111110100101100", 
    697 => "11111010001001000001010100011101", 
    698 => "11111110111011111111000011110110", 
    699 => "00101011111100001110101011110100", 
    700 => "11010101110101001111100100000100", 
    701 => "11000100010001110000011100010110", 
    702 => "00100101110111110010100111111100", 
    703 => "11101010110001100001001000010111", 
    704 => "00011010000000001111100011100110", 
    705 => "11110000111110110010100011001111", 
    706 => "00110011000000101111000100101110", 
    707 => "00100011111101001101000011010001", 
    708 => "11011010110101000001001011101001", 
    709 => "11111001000000101111111100000000", 
    710 => "00010010110111010001101000000110", 
    711 => "00011001111111001100000010011110", 
    712 => "11110010111101101101001000011111", 
    713 => "11111100000000000000101011101011", 
    714 => "11011100111010000001110101010010", 
    715 => "11010011000010010000001111110110", 
    716 => "00000001000110011100011011111110", 
    717 => "00001000000001000100000100000010", 
    718 => "11100100000110100000101011111100", 
    719 => "00111000000011010001110011011110", 
    720 => "01010000111110000001100011110111", 
    721 => "11101001110001100001111111010111", 
    722 => "11110010110110000000001100100011", 
    723 => "00100010000100101101010100101001", 
    724 => "11110101111101001111011011110101", 
    725 => "11101101111110111110011011110000", 
    726 => "11110101000011011100010010101110", 
    727 => "00100100110011010010010011110000", 
    728 => "11000100111100011111110000100101", 
    729 => "11100000111110011101111000010000", 
    730 => "11111010000010011111011100001010", 
    731 => "11001100001011001110111011000000", 
    732 => "11110110000001101111000000101110", 
    733 => "00100111111011001111100000100001", 
    734 => "10111000001010001111010011111001", 
    735 => "11011001000011000011110011110010", 
    736 => "11111100000001000000010100000100", 
    737 => "00000010000111100001000000010101", 
    738 => "11110010000101101111110111111010", 
    739 => "11110010001101101110011000101011", 
    740 => "00111010111010010010100111101011", 
    741 => "11001001001100000000000000010010", 
    742 => "00000111000101110000010000010001", 
    743 => "00001011111010111101100011001000", 
    744 => "01001001111111010000010111111011", 
    745 => "11111111000000100010001111011110", 
    746 => "00001001111110001011110111111101", 
    747 => "00011100110111000001000000100000", 
    748 => "11101111111100100000011011110110", 
    749 => "11000111000100001110110100011100", 
    750 => "00011101110101110001001110011101", 
    751 => "11011011001111000000100000011110", 
    752 => "00011011001001001101010011000100", 
    753 => "10111010000010000010100001000001", 
    754 => "01000000000011111111100111010010", 
    755 => "00100000111000110010011011100010", 
    756 => "11101111000001011101111111111110", 
    757 => "00001001001101111101111111011111", 
    758 => "01001011110001000010111100010011", 
    759 => "00110000000001110001101000000101", 
    760 => "00110111001000010011000100000100", 
    761 => "11110010010100110000000000011010", 
    762 => "11110110111110110001001111110001", 
    763 => "11110110111101100001011111111010", 
    764 => "11111010111101111111011000010101", 
    765 => "00010111111110000011100000011110", 
    766 => "00001110000100101111000000000011", 
    767 => "11111000001001001111110100101100" );

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

entity ReadA121136_weights_0_4_15 is
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

architecture arch of ReadA121136_weights_0_4_15 is
    component ReadA121136_weights_0_4_15_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA121136_weights_0_4_15_rom_U :  component ReadA121136_weights_0_4_15_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

