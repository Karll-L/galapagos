-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA117132_weights_0_2_3_rom is 
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


architecture rtl of ReadA117132_weights_0_2_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111010101111111010101011110011", 
    1 => "10111000111111010001110000110010", 
    2 => "11100001111110000000101110111010", 
    3 => "11100001000011110000000111100011", 
    4 => "11110001000101101101011000100110", 
    5 => "00010101001001101111101111011001", 
    6 => "00100010111001001111110000010010", 
    7 => "11101100000111000011101111111100", 
    8 => "00010001111110101110110100001011", 
    9 => "11101010000001000001011000010011", 
    10 => "11101000000010000001111000001010", 
    11 => "11011001111001000000001000001010", 
    12 => "00001011010010100010001101000010", 
    13 => "11111011001010000000010000001010", 
    14 => "11101101111110011110100111001000", 
    15 => "11111001001100100010000000100101", 
    16 => "10011101000100000010011100011000", 
    17 => "00100000110110110000111011001010", 
    18 => "11101000001000011111011100000000", 
    19 => "00100001111110111111110000101011", 
    20 => "10110111000000000001011011101010", 
    21 => "00011001000110101101001011011000", 
    22 => "00001111000001010011011011111100", 
    23 => "11101111111100110001100111110011", 
    24 => "00000100000001101110010100011001", 
    25 => "00000001000000000000101100100111", 
    26 => "11100110111101010000110100000010", 
    27 => "10101010110100001111110100100000", 
    28 => "00010000001011111110011111111111", 
    29 => "11010111111100010000000000101110", 
    30 => "11111011111110001101101000110011", 
    31 => "00000100000011010001000011000010", 
    32 => "00000010111011100000100111011000", 
    33 => "11111101001000111101001100110011", 
    34 => "11111011000000011110010111000001", 
    35 => "00000100000111000011110001110100", 
    36 => "11110010000010110001111100011000", 
    37 => "00101101000001100001000111000110", 
    38 => "01000111001000101101110111010001", 
    39 => "11100011111000110000011101100011", 
    40 => "11111001110101000011011011110000", 
    41 => "01100010111010111101100000010101", 
    42 => "00010101111100100000001100000011", 
    43 => "00001110111101000000001100100000", 
    44 => "10111111111011110000101111011101", 
    45 => "11100111001100100001011011101011", 
    46 => "11010001000011111111011111101011", 
    47 => "00011111000111101110001100000010", 
    48 => "00101101001101010000001011100110", 
    49 => "01000100000010011101010001000101", 
    50 => "11110000111111001101100011110100", 
    51 => "00101000001110111101100100100100", 
    52 => "01010000010010110000101000101011", 
    53 => "11101110110111100011010000101100", 
    54 => "00110110111010001111001011111001", 
    55 => "00100000111100100011011111000101", 
    56 => "00001110110100001101011111111010", 
    57 => "11000110110111110000100000001101", 
    58 => "00000001000011101111011100011100", 
    59 => "00010111111011110001100100010110", 
    60 => "01010100000110000001001100111110", 
    61 => "11100000111110011111110101101110", 
    62 => "00001010010101000010010100100111", 
    63 => "00001000110111011101000000011101", 
    64 => "11011101110101011110101000000001", 
    65 => "11001011000000110001001000100010", 
    66 => "00010101101111001111000000001001", 
    67 => "00110001111111111111010100011010", 
    68 => "00011000111110101101010111111110", 
    69 => "11101001101111110000110100011110", 
    70 => "00111000110111110011011100000001", 
    71 => "11110011111010110001000100010000", 
    72 => "00001000000100100000000100110000", 
    73 => "11100101001100100000111000001101", 
    74 => "10111011111101001110010100001011", 
    75 => "00001010110110111111100111000011", 
    76 => "11100010111100101110010000101011", 
    77 => "00010000111111111111100111101100", 
    78 => "00000000000010000000011111111110", 
    79 => "11100101110010010010000000111011", 
    80 => "11110011001011000000010111011111", 
    81 => "11101101110001100001001010101100", 
    82 => "10110010001101100011111011010000", 
    83 => "00100101101110111111001000000110", 
    84 => "00010011000010101110010111100100", 
    85 => "00101101111111010000001000010101", 
    86 => "11011111111100110011001000011100", 
    87 => "00110010001010000000100001110000", 
    88 => "11101101001011000110010000001011", 
    89 => "00110010111011111011010001001100", 
    90 => "11101111111000001010101111101111", 
    91 => "00101010110111111111111010110110", 
    92 => "00101110000000010000101000110100", 
    93 => "11000010001001001110010011000000", 
    94 => "11110101111100100101011011100000", 
    95 => "11111011000010101111001011100100", 
    96 => "00011111111111110011001100011001", 
    97 => "01100101110100011110110000110101", 
    98 => "00100110110100101110000111111011", 
    99 => "00001101000110100001111111110011", 
    100 => "00000000111011010011100011101011", 
    101 => "00011100000110111110010100001101", 
    102 => "11100010000010010001011101100111", 
    103 => "11110011000000110001000000111001", 
    104 => "11011011111010011011001000001100", 
    105 => "00000011000010011111101100011110", 
    106 => "00011111000010001110110011011101", 
    107 => "11100001000010100001101100000101", 
    108 => "10101110111011110010101000001111", 
    109 => "11011100000000101100111001000000", 
    110 => "00001100000000100010110000000100", 
    111 => "00001101000110111111001011110001", 
    112 => "11011001111100010010101000101011", 
    113 => "11011000000000000001001110111101", 
    114 => "00111100111111111011110000000100", 
    115 => "11100100000000011110011101010100", 
    116 => "11010111111010000010101111101000", 
    117 => "01000000111011011110000010101101", 
    118 => "11110010110000011100110100000000", 
    119 => "00000011101101010000101011000010", 
    120 => "00001101000110100001011100101101", 
    121 => "00000111110000011111101000001101", 
    122 => "11011110111110000010110111101110", 
    123 => "00000000001110011111100010111100", 
    124 => "00000011000100111111011100011110", 
    125 => "11100000001101011110110100001011", 
    126 => "11111001000000101110100100010100", 
    127 => "11111011000011111111111100011000", 
    128 => "00101101111000111110111111101110", 
    129 => "11100101111100101101101011011011", 
    130 => "00101001111010001101001100001111", 
    131 => "00111100101111001110011100011011", 
    132 => "00001100000001101111000111111110", 
    133 => "00001100001101110001000000100111", 
    134 => "00011000110111101110001100000110", 
    135 => "00010111000000110000000100001101", 
    136 => "00101010000000001111100000001001", 
    137 => "00001001111110100001011100100011", 
    138 => "00100111111001010001001100000000", 
    139 => "00000001111110010010010111010101", 
    140 => "00001110111000011101101111011001", 
    141 => "11011000111001111110100100001111", 
    142 => "00010101111100000000011100011101", 
    143 => "11100000111010110000100011111111", 
    144 => "00100101111111110010001100100000", 
    145 => "00000111000010111111110011101100", 
    146 => "11001001000000010001100100000011", 
    147 => "00000110110010000010001100000010", 
    148 => "11100000110010111011111001000100", 
    149 => "01000100001010001101010111111011", 
    150 => "00001001110101001111010011110101", 
    151 => "00000101111110000010001111111111", 
    152 => "00100001111011110000011011101111", 
    153 => "00010100011011000001010011011101", 
    154 => "11100001111010111110011000000111", 
    155 => "00001000110110100000100111011100", 
    156 => "11111101111000100010000011110111", 
    157 => "00001100000000000001010111100010", 
    158 => "00001111001101010001010011010000", 
    159 => "11111101000010111101101000001010", 
    160 => "00000110111101010000011011101100", 
    161 => "11010000000100010001010000000001", 
    162 => "00110100000001001110011011111011", 
    163 => "00101111110101011111101011101111", 
    164 => "11110101000100110000101111110111", 
    165 => "00000111110010101101011011101000", 
    166 => "00010101000100111111001111011011", 
    167 => "00001110000000100011001100101001", 
    168 => "00101011111101000001010111011011", 
    169 => "00000101111101101110001111001100", 
    170 => "11001010111011111111100100000000", 
    171 => "11000111110010110011101011110101", 
    172 => "00010010001011011100010111000011", 
    173 => "01001010010001111110100000110000", 
    174 => "00100000001010000000111110110110", 
    175 => "00011000000110111110010101001000", 
    176 => "11111101110001011110101011001111", 
    177 => "00000111001000000010011111111100", 
    178 => "00000110000010000011010100010111", 
    179 => "00110111110010100010111011011000", 
    180 => "00011011111000100001010100011010", 
    181 => "00010000111101010000111000001100", 
    182 => "11110000010011000000011000000011", 
    183 => "00010000110110010010010100011111", 
    184 => "11100110111100010001011000001111", 
    185 => "00001110111010101100100000100111", 
    186 => "11101111000010011110110100001011", 
    187 => "00111010111110001110101000100011", 
    188 => "01010000111010101111111100100100", 
    189 => "11011100000000100010001100000100", 
    190 => "10111101000111100000001111110100", 
    191 => "11010110000101011110101000000110", 
    192 => "00010010010101000001111111101000", 
    193 => "00011100110111000001111110101000", 
    194 => "00111001111101110100011000000000", 
    195 => "11111010000011101111100011110110", 
    196 => "11111010000101100011100011010101", 
    197 => "11110000001100001110011011011100", 
    198 => "11111011111110000100000000010000", 
    199 => "00101100111101101111010101000110", 
    200 => "00010101000011111100111100101100", 
    201 => "00010000000000011101001011111000", 
    202 => "00111001000010110000000011011000", 
    203 => "11111001110111001101011111111111", 
    204 => "11110001111110111111111000000100", 
    205 => "00001010001000110000011011101111", 
    206 => "10111111111111101111110011111101", 
    207 => "10101110111111111111001011110110", 
    208 => "11100000001000010010001000101001", 
    209 => "11001111111110100001101011001010", 
    210 => "11100100000011001101011111101011", 
    211 => "00011001110101101111110000100011", 
    212 => "11111101110000010000001100010111", 
    213 => "00010001101101101101101000001010", 
    214 => "00001111110111100011001011011111", 
    215 => "00011011110110100000110000011010", 
    216 => "11110010110011001111011000000110", 
    217 => "00011100001010000001011011001000", 
    218 => "11010111001010101110110000100111", 
    219 => "00001000110100011111010111100001", 
    220 => "11110001111110000001001000101101", 
    221 => "11010001111100110001110011111001", 
    222 => "00100000111101000011110011001110", 
    223 => "11100001000010001111101100100101", 
    224 => "11111101001101000000011000100010", 
    225 => "11011001000000101110001100010010", 
    226 => "11111001000010010001001100110000", 
    227 => "00011000000110110000100100010101", 
    228 => "11110111110010101110101011101110", 
    229 => "00010111000010010001011111110011", 
    230 => "11110100111110100011000000101110", 
    231 => "11110101000010001100111100000100", 
    232 => "00110101111100000000001100010110", 
    233 => "00100111111101011110101000010010", 
    234 => "11001110111010100001010011001011", 
    235 => "00101000000100110010100100100001", 
    236 => "00000110111111011101110111110010", 
    237 => "11101111000101101111111000110010", 
    238 => "11111011010001110001010111101100", 
    239 => "00000011110100111101111100010110", 
    240 => "01000101111010110101000011011101", 
    241 => "00011100001110011111000100010011", 
    242 => "00111001111101111111101001110110", 
    243 => "11111000111000110010011010100100", 
    244 => "11101101000000100010101011110110", 
    245 => "11111111111110011111111000110110", 
    246 => "11101110001110111111111111110100", 
    247 => "00100011111011000000110100010100", 
    248 => "11000110111011000000010100110000", 
    249 => "00011110001001101101000111011111", 
    250 => "11011110111100111111101000001100", 
    251 => "00001110000000101111001100010110", 
    252 => "00011110000001100011011100010000", 
    253 => "11010110000000011111101111111111", 
    254 => "11111110000000100000100011011100", 
    255 => "11100011000010100000100100000111", 
    256 => "00001011110101100010100100010001", 
    257 => "11101000010110001110100110100000", 
    258 => "00000001110100010000001000011010", 
    259 => "00011110001101110000010010001001", 
    260 => "11111110111101100100001011100111", 
    261 => "00011011111101101110111111110001", 
    262 => "11111101111110110001010111101100", 
    263 => "11100010110100110100011010110010", 
    264 => "00101111001010100010101011100000", 
    265 => "00011100001010110001011101000010", 
    266 => "11111111111110110011001000100000", 
    267 => "11101111111010101110110001000011", 
    268 => "11111100000001000011010100001111", 
    269 => "11000100111111111110111110001110", 
    270 => "00110010000111110100001100010001", 
    271 => "00000101110111100010110011110000", 
    272 => "00000001111010001000100111011111", 
    273 => "00000111111000110010011110100011", 
    274 => "00010010111111100101000111111101", 
    275 => "11111001111011101111100010011011", 
    276 => "11101011111011101110011111010100", 
    277 => "11110011001001001110110000111011", 
    278 => "11110101000001110110111011011111", 
    279 => "00011100000000000000001111011011", 
    280 => "11110001000010000010101111111101", 
    281 => "00000011000111010010000101111110", 
    282 => "11110100000100010000111001001100", 
    283 => "00010001111001011111111101000001", 
    284 => "11110000111000011101111000000100", 
    285 => "10111011111101001111010001101000", 
    286 => "11100011111100110100110100010011", 
    287 => "00100011001010101101111111111011", 
    288 => "11101110000111000100100011110101", 
    289 => "00000001111010101111001000110110", 
    290 => "00110011010010101101011000101000", 
    291 => "11110000001010101111101000010111", 
    292 => "11000000000111000010111100110111", 
    293 => "00101001111000101111001101001000", 
    294 => "00001100111011110110001100001001", 
    295 => "11101010111101101111011111001010", 
    296 => "00110110111110101110000100011001", 
    297 => "00110100001001110000110011101011", 
    298 => "11111110111111110011001011101010", 
    299 => "11001001111011110010001011110101", 
    300 => "11111011111101111100010000011110", 
    301 => "11100011111110011111001110000001", 
    302 => "00001110111011110101000000010101", 
    303 => "11101101111000101110101000100110", 
    304 => "11100100111011100010000000100010", 
    305 => "00010110000001011111001101011001", 
    306 => "11111001111100111010011011100110", 
    307 => "11100100111100011110101110000001", 
    308 => "01001010001101010000011111100110", 
    309 => "00001100111011111101011111010001", 
    310 => "00100010111000101000010011101110", 
    311 => "00101110111000010000001111100111", 
    312 => "00000101000010101100011011100101", 
    313 => "00001000001001101111011011001110", 
    314 => "01011001110010100001010111001010", 
    315 => "11001101001111111101111101100101", 
    316 => "11111110111110001100010111111110", 
    317 => "00111010000101111111010001111110", 
    318 => "11111111000010100100111000010111", 
    319 => "11100100111001100000100111000001", 
    320 => "11001011000111110010000100000000", 
    321 => "11010100001000110000110111110111", 
    322 => "11100101000010100001110101010111", 
    323 => "11011011000100110010011100000111", 
    324 => "00000000111000001111000100100000", 
    325 => "00010011001000011010111111110011", 
    326 => "11010001001000110001101111101001", 
    327 => "11110010111100101111001100000101", 
    328 => "00010011000111010011100000000000", 
    329 => "00000101001000101111010011101010", 
    330 => "10101011000111101110111111001110", 
    331 => "11111110111110011011110111001111", 
    332 => "11101011110111111110101000001111", 
    333 => "11000000111100001111011011011001", 
    334 => "11110101000001011111001000001000", 
    335 => "11101111001000010011110011110101", 
    336 => "11101001110111011110110000100100", 
    337 => "11000011111100001101101011110110", 
    338 => "11101000111101110000001011001010", 
    339 => "11110111000011101110100100000010", 
    340 => "11100101000010011101010100000000", 
    341 => "11100001111010001101100011111011", 
    342 => "11010101000110101101101100100101", 
    343 => "00100111000011011111011111101101", 
    344 => "11101001111011010001101100010100", 
    345 => "11110010110110101101010111010000", 
    346 => "11010100111111101011101000000011", 
    347 => "00101011111111111101110010111010", 
    348 => "11101100000000101110110111111111", 
    349 => "11101100000110111100101111110011", 
    350 => "11111001101110100110101000001100", 
    351 => "11010110001011100000101110011111", 
    352 => "11100101000110111101011000010001", 
    353 => "11111000111110110000110011010101", 
    354 => "00100000000011101100100011101101", 
    355 => "11110111001001000010000011111101", 
    356 => "11101010111101011110111100100001", 
    357 => "11011011110110011111011111000110", 
    358 => "11111010001011000001011111111110", 
    359 => "00110111000001100011010101010011", 
    360 => "00000101000010001100110000110110", 
    361 => "01000100111011010001100011100010", 
    362 => "11101011111111111101101111001010", 
    363 => "00000111111001001111101110111000", 
    364 => "11111101000100001101001100011001", 
    365 => "11001110111101000011000011001011", 
    366 => "00100101000001111110111011011101", 
    367 => "00010110101111000001100100111011", 
    368 => "00011100000010100000010100111100", 
    369 => "01000011111010000000011101001101", 
    370 => "11011001000101010100110111101110", 
    371 => "00000100000100100011011100111101", 
    372 => "11011010000010000011000000000000", 
    373 => "00100110111101110011101111011100", 
    374 => "01010111101100110000011001000111", 
    375 => "11101100001010101110110100100101", 
    376 => "11010111111111101000000100111111", 
    377 => "00011111000010111111100011110000", 
    378 => "11111001111010001110100111111111", 
    379 => "00111001000111100011011001101011", 
    380 => "11110101000011100001000101001110", 
    381 => "00011110110111100001101001010000", 
    382 => "00011100101101001111101011110111", 
    383 => "00010001000100101110101010110100", 
    384 => "11100011111110000001100111001110", 
    385 => "00010101111011101111100100011011", 
    386 => "00000010110010100010101000011110", 
    387 => "00001001110101100010101011000111", 
    388 => "11111011000100111111001010111110", 
    389 => "11111010000011000010011100010000", 
    390 => "00001001111010000001001011100101", 
    391 => "11001101111111100000001000000000", 
    392 => "00010000000000101111010100001100", 
    393 => "11011000000101100000001011101001", 
    394 => "00010100111101101100110100101100", 
    395 => "00100010000000111011110000010100", 
    396 => "11111110111100110001101011101110", 
    397 => "11001110000000001111010111101110", 
    398 => "00000100000011111111001000110101", 
    399 => "00100111111011111110001111001101", 
    400 => "11011001111011100000001100000100", 
    401 => "00101010111001001101010111100111", 
    402 => "10111101000001000000100000000011", 
    403 => "11011001111101000100100100000100", 
    404 => "00100001110111100001111011111111", 
    405 => "00101110000100000000010011101110", 
    406 => "11010110111101101111100100000010", 
    407 => "11101111000000100011110100010100", 
    408 => "11100010111011101111011100010001", 
    409 => "00000101000011000010110111110001", 
    410 => "11010001001011111100111001010010", 
    411 => "11100000111000111111001111101110", 
    412 => "01000001111000000001010010101110", 
    413 => "11000000110100100000001000101111", 
    414 => "10110110001000110001110011001111", 
    415 => "10000001101111111110011011100011", 
    416 => "00000000110111100000000100010000", 
    417 => "11111010111100011111101100010110", 
    418 => "11110010111101000010010011111111", 
    419 => "00011111111101110001000111110110", 
    420 => "00001011000010110001001000100101", 
    421 => "00110011001011110001111011010001", 
    422 => "00010100111010001010101111011000", 
    423 => "00010001110000100001111101010111", 
    424 => "00100010111011111111001011101100", 
    425 => "11110001111100011101010101001100", 
    426 => "00110011101011010001101100011000", 
    427 => "01000001000010010010100011111110", 
    428 => "00000010110100001101101000011111", 
    429 => "00011100111011110001000111100111", 
    430 => "00100011000000101110000100010011", 
    431 => "00000101111011110001001100000100", 
    432 => "00010010000001010000110000001110", 
    433 => "00001011001111111111011000111010", 
    434 => "01101100101111110011001111101101", 
    435 => "00010100101110100000111011001001", 
    436 => "00101101001010001111011110111111", 
    437 => "00101110111001011101011100110101", 
    438 => "11100001111011110010010111110100", 
    439 => "00110000111111100011001011010000", 
    440 => "11011101000011111110000000100100", 
    441 => "00011101010010110011101100001010", 
    442 => "11110000111110100000110000000001", 
    443 => "00000110000110011110110011010110", 
    444 => "00011000111110011111000100000100", 
    445 => "11101010000011101111011011001101", 
    446 => "00011101111110001111001100001000", 
    447 => "00000011001000101110110000111100", 
    448 => "00001111000001100001000000000000", 
    449 => "11110101000000101110101000010010", 
    450 => "00010001111001011111011000101001", 
    451 => "00001000111100101111101011110010", 
    452 => "11000011010010110001110011101101", 
    453 => "10101000110100011101111100001111", 
    454 => "11111100000011011111000000010001", 
    455 => "11010101001011010000001100011110", 
    456 => "00010011000011110000100000010111", 
    457 => "11111110111110100001111111110101", 
    458 => "00101110000101111111001011110001", 
    459 => "00010111000100110000101111100010", 
    460 => "00000011111100010000100100000011", 
    461 => "00010100111011011110110000010010", 
    462 => "00011010000110001110011000100111", 
    463 => "11111111000001001111111111101110", 
    464 => "00000111111101001111010011111111", 
    465 => "00100000111111111111111011111101", 
    466 => "00011000000100010000110111010101", 
    467 => "00010001111011111111011100000100", 
    468 => "00011100111010001101110000101000", 
    469 => "11011111111010101111000100101101", 
    470 => "00011000111100001110110100101101", 
    471 => "00010011111010001111000000000001", 
    472 => "00010100001001001110100000001010", 
    473 => "11101110000100101110011011110011", 
    474 => "11100111111110111110101111110000", 
    475 => "11010000111111000011111100010000", 
    476 => "00001010110001010010001100000100", 
    477 => "11111011111100100010100100010001", 
    478 => "11010110000101011111111100100010", 
    479 => "11101010111100010010110011111010", 
    480 => "00001011110110010001001111010100", 
    481 => "00010100000011111111010100001010", 
    482 => "00000010000001001111110000001000", 
    483 => "00010100000010001111111100000010", 
    484 => "11111101010010011111011100111110", 
    485 => "00000000001010101111100100011111", 
    486 => "11111010111111000000101011100000", 
    487 => "00001001111101000000010111111101", 
    488 => "11001111000000011111011011110111", 
    489 => "11110101000000100000101100000011", 
    490 => "11101110110111110011001011111100", 
    491 => "11011110000111100001100000001110", 
    492 => "11101111001000101110111111101011", 
    493 => "11110001001010100010101000100101", 
    494 => "00100000110111011110001011111100", 
    495 => "11111111000100001111110100000011", 
    496 => "00000011000000001111011100100101", 
    497 => "11101111000000001110000011110101", 
    498 => "00101110111110101110111100101110", 
    499 => "00011011111110101110110011101011", 
    500 => "00010001000010100000111000100100", 
    501 => "11011100000000010010010000001111", 
    502 => "11111100000010111101011111101010", 
    503 => "11011000000001010000011000001001", 
    504 => "00000001110010011101111000000001", 
    505 => "11101001110111110011111111101011", 
    506 => "11011110110101101110101111101010", 
    507 => "11100101110110110000000111010001", 
    508 => "11111011000010101111100100000101", 
    509 => "00000110001000101111101000011001", 
    510 => "00001101111110110000100011110100", 
    511 => "00010100111001010000001000001010", 
    512 => "10111100000100011110001100000000", 
    513 => "00010101111101001111111111001001", 
    514 => "11010110001000010001100011101101", 
    515 => "00010111001101111111111000111010", 
    516 => "00000010001001011000000111110101", 
    517 => "00100010110111000001010010111011", 
    518 => "11110111000011000001100100001101", 
    519 => "00010100111100110010001000000010", 
    520 => "00000100110000000000110000011011", 
    521 => "11101010111111110000111111111011", 
    522 => "00100011010000011111001100000000", 
    523 => "11101110111110101111110000111100", 
    524 => "11011001000101010001110101000011", 
    525 => "00001110111000010001101000110101", 
    526 => "01101000111110001101011100101001", 
    527 => "01010101000001000001001111010001", 
    528 => "00010110000111001111110111111010", 
    529 => "11011001001000110000111000010010", 
    530 => "00110001111100010010100110011111", 
    531 => "11010001111110101111011001111110", 
    532 => "00001000110110110010111000000001", 
    533 => "11101011111011101110111010100011", 
    534 => "00001100000010011100111100101000", 
    535 => "00111011111000010001010100010001", 
    536 => "00010001001101100000111100010001", 
    537 => "11101101001001110010000100011111", 
    538 => "00001000111100100011101011011010", 
    539 => "00001010001011101011100111011011", 
    540 => "11100111111111010101010100011010", 
    541 => "11100111110101110001101000011010", 
    542 => "11101001110111001010001011110110", 
    543 => "00010001111010011110011100001110", 
    544 => "11100110110011011111100000001010", 
    545 => "00100011111000011111011110111100", 
    546 => "11110011000010111111000100000001", 
    547 => "00001100000011100000111011110101", 
    548 => "11111001111001000001100011100111", 
    549 => "11110111000010001110001010111001", 
    550 => "00111000111111001110111000001000", 
    551 => "00010010111000011111001100000111", 
    552 => "11100001111110000100101111011110", 
    553 => "00000011010010101110100010011110", 
    554 => "11101111001010000010100000010111", 
    555 => "11111111000101110000111000001001", 
    556 => "00100100111010100000110000011000", 
    557 => "00000011000010111111110111111110", 
    558 => "00011110110010001110010010111100", 
    559 => "11001101000010111101011100011011", 
    560 => "11110101111010001100011011011111", 
    561 => "11110110111110101111110010110000", 
    562 => "11100001111100111010100011111111", 
    563 => "11101100000000010000110001000110", 
    564 => "11110101001101011010111011111011", 
    565 => "00100101110101010000000011111110", 
    566 => "11010010000101011101111100100101", 
    567 => "00001101111110100010001011110011", 
    568 => "00011000111110010000011001001100", 
    569 => "00010011000011010000111100011101", 
    570 => "00100000111101010011111000010111", 
    571 => "11111110111000010010011111101011", 
    572 => "00110111110100111011000000011101", 
    573 => "00010001000111000000010011001011", 
    574 => "11101110000100000101101100101010", 
    575 => "11110011111011111111100111111110", 
    576 => "00000001000011100000110000000110", 
    577 => "00001110110111010001000001011101", 
    578 => "11001111111011111101101011110100", 
    579 => "11011000000011000001010011010101", 
    580 => "00011101001011010001001011110111", 
    581 => "11101110000010011101111100101001", 
    582 => "11010101110001000001000111011000", 
    583 => "11011111110111100001010111011100", 
    584 => "00010010000011100000110100100001", 
    585 => "00010100000101100000010000010000", 
    586 => "00000110001000110011100011110000", 
    587 => "11100011101100110011000100000001", 
    588 => "11100101001111110000111000010000", 
    589 => "11100011001001100101110000001110", 
    590 => "00101000000111000011001011110010", 
    591 => "00000110001111110001100111100011", 
    592 => "00100100111100010000100000010101", 
    593 => "11100110000001001100110000010000", 
    594 => "00011001111001101101110000001010", 
    595 => "11101110111000011110010001010100", 
    596 => "00001101110001101110011011010000", 
    597 => "10111010000100000000011111100100", 
    598 => "00001001110110000000111111101011", 
    599 => "11101101000100111101000111100111", 
    600 => "00101110000100000000010111111101", 
    601 => "00000000000000100000001000100111", 
    602 => "00001011111100111100110011111011", 
    603 => "00010100111001011101011100010011", 
    604 => "11100001000000000011001111100001", 
    605 => "11100111111010001111001000110000", 
    606 => "10110110100101101111110010011110", 
    607 => "00000001110010011110110011011101", 
    608 => "11100010000111010001010100101011", 
    609 => "11011001110111100010000111000010", 
    610 => "00001001000111001111110000001111", 
    611 => "00100101110110011111110111101011", 
    612 => "00001100111111110000000011101001", 
    613 => "00110010001100101111001000000111", 
    614 => "00001011111101010001100000000111", 
    615 => "11100010001000100000100100101111", 
    616 => "00001101000000110000000000001001", 
    617 => "00011100001100001101000011110100", 
    618 => "11001101110001010001000011010001", 
    619 => "00001110000110001110111011001110", 
    620 => "10111110000110111111110000111100", 
    621 => "11110001000010111111000111000111", 
    622 => "11110101110111100001011100010000", 
    623 => "11100010111101001111110100000000", 
    624 => "11100111000101100000011011010101", 
    625 => "11100011111100110011001000110101", 
    626 => "10101000111101100011111111101000", 
    627 => "00010001001001001100110000001000", 
    628 => "00011110111001111111010100111011", 
    629 => "00001100110110101110111100101110", 
    630 => "00100000111100110001001000000110", 
    631 => "11100010000000100101000100001111", 
    632 => "11111110000100000101010111101101", 
    633 => "10011000101111101110000100011001", 
    634 => "00100110110100000001001000011010", 
    635 => "11011001110101011011100000011100", 
    636 => "11011011000100111010111000011100", 
    637 => "00111101110101001100111011001011", 
    638 => "11111110001011011111000000100000", 
    639 => "00101011111001010101010011010000", 
    640 => "00000110001001101111000100010111", 
    641 => "00001001000100101100001000000011", 
    642 => "00010111000001111111101100011010", 
    643 => "00011000111101001111001111101111", 
    644 => "11100110000111100011111000001001", 
    645 => "11001010000110001100111111001010", 
    646 => "00010001000111101110001111011100", 
    647 => "00101000000100001100001111111100", 
    648 => "11111010000000000001010100010011", 
    649 => "11001110000111011111001000010000", 
    650 => "11110100000000100000001000001000", 
    651 => "11100011001010000000101111111011", 
    652 => "11100100000111110000000111101010", 
    653 => "01000111000000100000110000000010", 
    654 => "00010001000101000100100011110101", 
    655 => "00011101111011010000100010101101", 
    656 => "00001101000110001111100000000001", 
    657 => "00010111001011001111010001010000", 
    658 => "11111110000101010000111100000100", 
    659 => "00000000000110110011000011000110", 
    660 => "11111011111111111110100011101011", 
    661 => "11001101001010111111001011101101", 
    662 => "00010111110010100000101011001110", 
    663 => "11111111110010000010001011110001", 
    664 => "11100010001000000011001110010001", 
    665 => "11011100111010010000111100100000", 
    666 => "00101010111001001110100000001101", 
    667 => "11100100000010110000100000011000", 
    668 => "11111101000010110000001000000101", 
    669 => "00011011000011010000100011101010", 
    670 => "00101011110101110000110110110011", 
    671 => "00000100000111111110111100001010", 
    672 => "11101111000110110000100011001110", 
    673 => "11000100001001001111011100010101", 
    674 => "00111101000101000000001000011110", 
    675 => "00001101000000101111101000001110", 
    676 => "00100100111101100000111000011111", 
    677 => "00100110111101000000100101000101", 
    678 => "10111000111100000001101111001101", 
    679 => "00001000111011100000100000000011", 
    680 => "00001110000010000001000111100001", 
    681 => "11000001000101111110010100101001", 
    682 => "00110000000101001111000111110001", 
    683 => "11100101111110100000110100001000", 
    684 => "00111010000001100000010000001010", 
    685 => "10011110111111010001101100100101", 
    686 => "00000100000010001100100010011000", 
    687 => "00000010000000010010011110110011", 
    688 => "00001000111011100000100000000011", 
    689 => "00010011111111101111101111011101", 
    690 => "00011110111000010001001111111010", 
    691 => "11001111110011000001111011100100", 
    692 => "11101000001000000001011000001000", 
    693 => "11101101001000110000111011111100", 
    694 => "00001101111100000000101000001101", 
    695 => "01011100111001100001000011111110", 
    696 => "00000011000100000001110100101010", 
    697 => "11100101111111110000001111010101", 
    698 => "00000000000011001111000000000000", 
    699 => "00110101110100010010000011101010", 
    700 => "11100111111010011111100000111000", 
    701 => "00001011111100101111010000100110", 
    702 => "00000011110111100000000011011111", 
    703 => "10111000111100000001001111110011", 
    704 => "11010101111110110001001100010011", 
    705 => "10101111000100010000011111010111", 
    706 => "00111111110000001110000011010000", 
    707 => "11111000000100100011100100010101", 
    708 => "11101101000100011101100100101100", 
    709 => "00001110111100001110001100000111", 
    710 => "11110100101111111100111111100001", 
    711 => "01000001010000001111010011100011", 
    712 => "00010011000011000000111000001001", 
    713 => "00000010000110100010101100000100", 
    714 => "11101010000111110011010000000010", 
    715 => "11011000111100001101101110111100", 
    716 => "00101001111110010001100111110001", 
    717 => "11111000110001110001000000101001", 
    718 => "00011001111101101110000000110000", 
    719 => "11010110000010110001011000100101", 
    720 => "00001100001100010010101100011001", 
    721 => "00101110010011000000101111011110", 
    722 => "11011110110001010000011111110110", 
    723 => "11110011001010100000010110111110", 
    724 => "11001100111100101100100111111111", 
    725 => "00001110111101110000111000010011", 
    726 => "00101001111100011111000111110111", 
    727 => "11111110111010101110110001010101", 
    728 => "11010000000100111101011100100010", 
    729 => "11100001111101001101101100001000", 
    730 => "00000001110101100010001010110100", 
    731 => "11001101111110111111011000011100", 
    732 => "00001101000011101111011111110101", 
    733 => "11101010111001011110100000100010", 
    734 => "11110100111110110010100111111110", 
    735 => "11011101111011011100100110101000", 
    736 => "11111111111010001111011100010101", 
    737 => "11110001111010101111010000101101", 
    738 => "11011110111101110100110000001100", 
    739 => "11111000000110111110101100001001", 
    740 => "11111111000011101110111100000111", 
    741 => "11001100111010101101111001010101", 
    742 => "00010100000100111101001011011101", 
    743 => "00010111111110000010011100010100", 
    744 => "11111111000110011101011100111111", 
    745 => "00001101110010001101011100110000", 
    746 => "00110100000001010001100001000110", 
    747 => "11100011101111111110011011110000", 
    748 => "11000011001000011111001000111110", 
    749 => "00010100000010100011110111000011", 
    750 => "10010111000000011101100111010111", 
    751 => "01010100111111010000001101011001", 
    752 => "11011011000110001111111000111011", 
    753 => "11011100110001101110110111110000", 
    754 => "00100011110100010011000011111111", 
    755 => "00100000001111010000101000100001", 
    756 => "00000000110111110110011011011101", 
    757 => "11100010000010111110011111101101", 
    758 => "00111000111100000000010100011101", 
    759 => "00010110111011101101001000100011", 
    760 => "00000101000011001110011000010111", 
    761 => "00001010111101110001111000001011", 
    762 => "00001001000111110011011011101011", 
    763 => "00011001111001001111100000001100", 
    764 => "00110110010010110001101100101101", 
    765 => "11010001111000100010100100101110", 
    766 => "11011000001000011110110000000101", 
    767 => "00001111111000000010010011110010" );

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

entity ReadA117132_weights_0_2_3 is
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

architecture arch of ReadA117132_weights_0_2_3 is
    component ReadA117132_weights_0_2_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA117132_weights_0_2_3_rom_U :  component ReadA117132_weights_0_2_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

