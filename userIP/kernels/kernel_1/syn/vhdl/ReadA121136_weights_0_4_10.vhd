-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA121136_weights_0_4_10_rom is 
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


architecture rtl of ReadA121136_weights_0_4_10_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00000010111110110010111000001111", 
    1 => "00011011110110001100101000111100", 
    2 => "00000000111000100010000001000011", 
    3 => "00011111111100110000011111100011", 
    4 => "00000111001001011110110011100011", 
    5 => "00011000111101001110011100110110", 
    6 => "11100110001010111111101011100011", 
    7 => "00000100111111100001110000100110", 
    8 => "11101011000101000000001100111111", 
    9 => "00101100000010101111000111010000", 
    10 => "00001110110011111101001011011111", 
    11 => "11100110000000111111100111111110", 
    12 => "01001000110111110000100100100000", 
    13 => "11101011000100101111000111011001", 
    14 => "00000110110111000010000001000111", 
    15 => "11101100000111110000001000010001", 
    16 => "11111001000011000011110011100011", 
    17 => "00000111110110010000101001010100", 
    18 => "11101111110111110101110011101110", 
    19 => "11011101110111100011000100100110", 
    20 => "10101110000100101111010111101100", 
    21 => "00000001110001100001100011101101", 
    22 => "11000010111110000011110001010000", 
    23 => "11110010010001010001010000101000", 
    24 => "00101010111111101101111000010100", 
    25 => "00001101111100111110010100000101", 
    26 => "00000010110110100111000000100011", 
    27 => "00010011110111100101010100101000", 
    28 => "00100110110111110000110011110011", 
    29 => "11110000110111011111010000001000", 
    30 => "11111100001011011101011111111110", 
    31 => "00010001000100010001101000010001", 
    32 => "00111110000111001101110111101010", 
    33 => "00010010111011101110101000100101", 
    34 => "00111111000011011110100011000100", 
    35 => "00010101000111011111000111110011", 
    36 => "00001110111001000000000100100000", 
    37 => "11110101111111100001010111001011", 
    38 => "11011000000100100011000100110110", 
    39 => "11001011110000000010000111011000", 
    40 => "00100111000001111101010000001011", 
    41 => "11110100000111110000100001111110", 
    42 => "00111000001101011111011000110111", 
    43 => "11101101000101100011111100001001", 
    44 => "11100000001100110001001111100001", 
    45 => "00001100111111111101100000000111", 
    46 => "11011110000011001111000011100110", 
    47 => "11011101000011000011001000101001", 
    48 => "00001101001000101110011011101100", 
    49 => "11011100111101001101010001000000", 
    50 => "11001111000100011110000011101011", 
    51 => "11111010000111001011100000100011", 
    52 => "11111000000101001111001000101000", 
    53 => "11101110000010111101011011100001", 
    54 => "11010110110111001010010101100000", 
    55 => "11110001101111110000111110011011", 
    56 => "11110001111110000000101000011010", 
    57 => "10111110111101111110110111100011", 
    58 => "00110110001110010011011111101101", 
    59 => "00001011111110100000101111101100", 
    60 => "11100101000101111110100100101110", 
    61 => "00001000000010000010111110110001", 
    62 => "11011001000000011110101011010101", 
    63 => "11100110001000011101111100011100", 
    64 => "00110001111011001100101111100000", 
    65 => "11100100110001000010011000011101", 
    66 => "00000111010010011110000001000110", 
    67 => "00011100000011111110111100011010", 
    68 => "11011111000101011111100111111100", 
    69 => "00000111111100001111001000010010", 
    70 => "10101010111100110010001011100011", 
    71 => "00000100000101101111101101000001", 
    72 => "11100101000010100000000011110101", 
    73 => "11100010111110010000010100010110", 
    74 => "11000000111110010000101111110011", 
    75 => "00000010111111101110100100010111", 
    76 => "00010100001100000001110000011001", 
    77 => "11111110111111111111011000001010", 
    78 => "11110011000000011111110111111010", 
    79 => "00000010000101001110110111111100", 
    80 => "00011010000100111111011100010010", 
    81 => "00001110000100001110010000100111", 
    82 => "00101000000011111101110011111110", 
    83 => "11011101000011100011011011100100", 
    84 => "00010110000110001111010100011010", 
    85 => "11110000111101111111110111110110", 
    86 => "11100100111111110010100011111000", 
    87 => "11110110110010111111000111111101", 
    88 => "11111111000101100000100101011110", 
    89 => "10111101000101101110010111001000", 
    90 => "00111010110101011101111000001100", 
    91 => "11101111000100000001010100011011", 
    92 => "00011110000101010010110111100010", 
    93 => "00000111010010011101101100000101", 
    94 => "00010011000101111111101111110111", 
    95 => "11101011000100110000101000000011", 
    96 => "00010100110101101111001000110000", 
    97 => "11111110001010111111101010001011", 
    98 => "11101111111000111110011111100001", 
    99 => "00001101000111000001001100000110", 
    100 => "00000110000111110010001011110011", 
    101 => "00010100000100111110111101000001", 
    102 => "00111110000000011111001111101011", 
    103 => "11111110000100111110101100100110", 
    104 => "11111100111010001101111000100010", 
    105 => "11110011111001010001101010110010", 
    106 => "00000110100111010001100011110100", 
    107 => "11111100001010011111100110111111", 
    108 => "11010001111000000000111100010101", 
    109 => "11100010000111001100111011101100", 
    110 => "00000101111101001110010100000011", 
    111 => "00001101111111000000101111000110", 
    112 => "10111001111110111110100011000111", 
    113 => "00000111111101110011001100101010", 
    114 => "01100101110011110001101011010011", 
    115 => "11011011111001100100011100010101", 
    116 => "00011000000010110000110000001111", 
    117 => "11100011000000111101101011001010", 
    118 => "11100101111001010000111111101000", 
    119 => "11111011111111111110100011100001", 
    120 => "00000101111110111110110111101110", 
    121 => "11010111000000110011011100000001", 
    122 => "11110100111111100010000011110111", 
    123 => "00000000111101111111101100010000", 
    124 => "00000100111100000000001111000110", 
    125 => "11111010111110010000000100100011", 
    126 => "10110111000000010010100000010000", 
    127 => "00001000110010110000010011100011", 
    128 => "11100001000110000011010000011010", 
    129 => "11100010000110010000100000101100", 
    130 => "11111101111011000011001111101011", 
    131 => "11110101000111001110101111110101", 
    132 => "00000001000110111111110000000001", 
    133 => "00010011000011010000001111011110", 
    134 => "00000010000011000010010011110100", 
    135 => "11110111000000010000011011111110", 
    136 => "00010001000001111011110000001000", 
    137 => "00011101001001100000011111010000", 
    138 => "11110111010001100011111000001010", 
    139 => "00111011110110001101110100110000", 
    140 => "00110100000101101101100011101000", 
    141 => "11100111001000101111010111110111", 
    142 => "00010110101111111111010000000100", 
    143 => "00101110111111111111100011011110", 
    144 => "11011101000001111100101111010110", 
    145 => "11101000000011000000101111101110", 
    146 => "00001110110010001111011000000100", 
    147 => "01000001110111111111000000110100", 
    148 => "11100011111110110011000100000011", 
    149 => "00010110010000111011100000101100", 
    150 => "00011111001001101101001000010100", 
    151 => "11110000111101100011111100100010", 
    152 => "11001110001100111111100011001010", 
    153 => "00011010111101001111000001000101", 
    154 => "00011110111110110010010100100001", 
    155 => "00111100111110001111010100000010", 
    156 => "10111101001100010000101000001100", 
    157 => "11101010001000100000100111110001", 
    158 => "11011010000011110000100011101110", 
    159 => "01001100110111111110010110010001", 
    160 => "00010100000010101111010011111110", 
    161 => "10110001000000110010000011111001", 
    162 => "11101110001011100100010100000110", 
    163 => "00000110000101001100111111111000", 
    164 => "00010110011010101110001010111111", 
    165 => "11110001111001110001100111111101", 
    166 => "10101001000111001101011011111001", 
    167 => "10101111111100110011010111101111", 
    168 => "00101101001000010001100011110011", 
    169 => "11011001110110010010000100011001", 
    170 => "11100011111110001111101100011010", 
    171 => "11110000001010111111100100000110", 
    172 => "10010111111001001101001011011000", 
    173 => "11011010000000000010010111110010", 
    174 => "11110111111111000010110100101001", 
    175 => "00000100111110000011000011110001", 
    176 => "00110000000100011111010001000100", 
    177 => "11110000000010001101101011110000", 
    178 => "00101010001001110000010000100001", 
    179 => "11111101111011000001101100011011", 
    180 => "00011101111110100011000111100000", 
    181 => "00001010111110100010110100110000", 
    182 => "01001101110100010001011011101101", 
    183 => "00101000110011111111001011101111", 
    184 => "11111000111110111111111011111011", 
    185 => "11101000111110111111111100100111", 
    186 => "11101110000011110001101111100100", 
    187 => "00011111001111101111000111011111", 
    188 => "00111100000110000110000111010010", 
    189 => "00000111000101011101000100100111", 
    190 => "11100011001100011111111111101001", 
    191 => "11000010000101110101011001000100", 
    192 => "11111001111010000000101101001110", 
    193 => "11100100000011110010111111010100", 
    194 => "11101101000011101111111111011100", 
    195 => "00001001110110010001001100110010", 
    196 => "11111001110100011111101011100000", 
    197 => "11101101110011000010101100111000", 
    198 => "00111011000100101111100011111111", 
    199 => "11011010000101000010010100010100", 
    200 => "11110000000010000101000000001001", 
    201 => "00011100111000110001011010110010", 
    202 => "11110110000011100000101011111100", 
    203 => "00011111110000010000111110010010", 
    204 => "01000101000100001101010011001111", 
    205 => "11101111000101111111111000010100", 
    206 => "11101110000110101101001100010001", 
    207 => "00000100000011001111111111011000", 
    208 => "00100010110011010001101011111001", 
    209 => "11111010111110001110101011010000", 
    210 => "11111101000010000001101011010110", 
    211 => "00000001111111010000100000000100", 
    212 => "11110001110010101110011000100100", 
    213 => "00010001000011010000011000100101", 
    214 => "00100011111000110010111100000011", 
    215 => "00000111111001000010010111100100", 
    216 => "11111011111001111111011111100010", 
    217 => "11110110000001011110011000011100", 
    218 => "01000100001001000001000111011110", 
    219 => "11101101111101111110111111000000", 
    220 => "11100110000111000001010011101001", 
    221 => "00001100000101101111101100001100", 
    222 => "00010111000101000000010000000101", 
    223 => "00101111111010110010000111010001", 
    224 => "11011100000000101110001111111110", 
    225 => "11100000111011100010101001000011", 
    226 => "00000010111011010000011011111110", 
    227 => "00001000001001100100001011011010", 
    228 => "11111111000010011110000011000100", 
    229 => "00010111111010000001000111110100", 
    230 => "11110110110100011011111000101000", 
    231 => "00010101000111011110101000011000", 
    232 => "11010101001001101111001111101100", 
    233 => "00100000000111010001011000010001", 
    234 => "11111001110000000000110000000101", 
    235 => "11111100111101100011011111101110", 
    236 => "00001110000001111111111000101011", 
    237 => "11110111000011100001011011100010", 
    238 => "11100001111110111111011001010101", 
    239 => "00001100000001100001110000101101", 
    240 => "11111011111101001111011111111100", 
    241 => "00011010111010101111001111101011", 
    242 => "00001000110101101101111101010111", 
    243 => "11111101000100011101110011100101", 
    244 => "11111010111101000000101011100110", 
    245 => "00001010000110001111111100010100", 
    246 => "10100001110001110011001100001100", 
    247 => "11100011111010001110110000011110", 
    248 => "00111110000011010000110101010000", 
    249 => "00100000000001000001010111100001", 
    250 => "00100100111101001100001011111010", 
    251 => "00011010111000101111010111101010", 
    252 => "11100010111110110001010011110100", 
    253 => "11111011110101100000001100001111", 
    254 => "11001110111110101111001100010111", 
    255 => "11100100000010010000100101001101", 
    256 => "00001101001000000010101000011011", 
    257 => "11110100000010110000011101000101", 
    258 => "11111100000010111110010111110111", 
    259 => "11110110000000001101001011101000", 
    260 => "00001101111110101111101011111010", 
    261 => "11100101000100010000100011100100", 
    262 => "10101001000110010001010100111000", 
    263 => "11000011111100011110010000010111", 
    264 => "00010101110000000100011011110101", 
    265 => "00010101000111100000111011110101", 
    266 => "00101110111100001111010111001111", 
    267 => "11100101111111110000000100000100", 
    268 => "00011111011000100001111001010110", 
    269 => "00100011001001000000101011111100", 
    270 => "11101110000110111111000100000001", 
    271 => "00001010000010010001000001101011", 
    272 => "00010101111011001101000111110111", 
    273 => "00001110000001100001010100000001", 
    274 => "10110001001000110011010000100111", 
    275 => "00101111110111110000001111011011", 
    276 => "11000011111000110010111111010010", 
    277 => "11110001111101010000111000101101", 
    278 => "11100001111101010010001100000011", 
    279 => "11110001000111001111000000100000", 
    280 => "00000100110100010000011100100111", 
    281 => "11100100111011110000010011001101", 
    282 => "00001010111111101111100111100000", 
    283 => "11101110111010100010001111110000", 
    284 => "11101011111100001111100000000101", 
    285 => "00001011111011111111110000111101", 
    286 => "00000010000010100001111000000011", 
    287 => "11111001000010111101110100001000", 
    288 => "11111110000001001110001011111001", 
    289 => "00000010000111110000100111111100", 
    290 => "00010110111000110010000011111010", 
    291 => "00000100111111111111011011110011", 
    292 => "11111110001011010011000011111010", 
    293 => "00000111000010111111010000100100", 
    294 => "00011001000000100000010100001001", 
    295 => "00001001111000100000101111101111", 
    296 => "11111100110000010010010111101110", 
    297 => "11110100000110111111000000011111", 
    298 => "11101110101101001111011100100011", 
    299 => "00001100001010101101000111110001", 
    300 => "11100100001000101111010100000011", 
    301 => "00000001000110000000110011111000", 
    302 => "10111101001001000000010000011000", 
    303 => "00000101001001001101101100011010", 
    304 => "00100010110010001111000111111100", 
    305 => "11110111000001000010010011010011", 
    306 => "00100010000100000000001011110101", 
    307 => "00101110111000010001010111100110", 
    308 => "11101111000110010000110011110100", 
    309 => "00011001000101000001001011011000", 
    310 => "00001111000000110000010011111001", 
    311 => "11111011000001000001101000000010", 
    312 => "11011110001000011101001100010001", 
    313 => "11111001000001010001010111101101", 
    314 => "00101010111001100011011000101101", 
    315 => "00001101111100011110011011011010", 
    316 => "11111011000010000001000100100110", 
    317 => "00000111000000100010010011110000", 
    318 => "11111101000100111100111111110111", 
    319 => "00101101111001001111001100001110", 
    320 => "00111100001011100010101111001101", 
    321 => "00100011000110110000101000100000", 
    322 => "11101100110011011101101000001011", 
    323 => "00001011111111110001110100101001", 
    324 => "11100100000101000001101111000111", 
    325 => "11110010110101011101001111110110", 
    326 => "00010001110110011100000011100011", 
    327 => "00011110110111001110111011100011", 
    328 => "00001000111000000001000100100001", 
    329 => "11101101000000100000100000001001", 
    330 => "00010011111001110000100011111010", 
    331 => "00001000000001101111110000000100", 
    332 => "11010000111000010000010000100101", 
    333 => "11011010000001000010100011011010", 
    334 => "00000111111101101101000011110110", 
    335 => "11111101001011000011011111100000", 
    336 => "00101011110100110001110100010011", 
    337 => "11101010000000000010011011010101", 
    338 => "00001001111110000001001101000010", 
    339 => "11001110000010110000001000011111", 
    340 => "00001000110100001111100100001101", 
    341 => "00100111110100100000011100011011", 
    342 => "00100101110111011111101100001000", 
    343 => "11010111001000011110111100110001", 
    344 => "11100001000101100000000111010110", 
    345 => "11010100000111110000100111110010", 
    346 => "00011111111111100011000011010001", 
    347 => "00000001110011111111101100000011", 
    348 => "00010000000000101111101011110101", 
    349 => "11111001000010110001110111001111", 
    350 => "11010010111110110000101011111100", 
    351 => "11111010110111001101101100110110", 
    352 => "01000100000100101101101011010110", 
    353 => "00101111000010111110010011101100", 
    354 => "00001111000111001111111111010001", 
    355 => "11101111111011110001011100000010", 
    356 => "11100110000100001111010100100100", 
    357 => "11101101111101011111011111110000", 
    358 => "00000100001101001100110011010000", 
    359 => "00000111100110111111011100001000", 
    360 => "11110110001000110000011100100111", 
    361 => "11101110111100100001011010111100", 
    362 => "00011111000000100001011111111011", 
    363 => "11110000000101001110011000001110", 
    364 => "00100100110100101101011000101110", 
    365 => "11111010000111100000011111011011", 
    366 => "00011011001100101011011111000010", 
    367 => "11100001111110001111101011000111", 
    368 => "00011110110011110001111111110110", 
    369 => "11011000000000111111100100000001", 
    370 => "11111110001001111100010100000001", 
    371 => "11100010000000011101010100010010", 
    372 => "00101010111011001110101111111100", 
    373 => "11100001000010110011111010101111", 
    374 => "00011001111110110000001000010000", 
    375 => "11111100000101010111101100000110", 
    376 => "00110001111111001110111111010101", 
    377 => "11111011111110110000100111110011", 
    378 => "00000110111101111110100001011101", 
    379 => "11110001111100000010001111111111", 
    380 => "11011111000011011111110100111111", 
    381 => "11110001111011100010100000011011", 
    382 => "00100111001001000000000111110000", 
    383 => "00011110111110111111011111100111", 
    384 => "11010100000111011001110001110110", 
    385 => "10101101000100011100100000101110", 
    386 => "11111001111011001100011011110011", 
    387 => "00100011000100110100101011101000", 
    388 => "00100110010011111011100111101101", 
    389 => "11101100111100001111111111001101", 
    390 => "11101111110100101111110000000011", 
    391 => "00000111000001101110000011111011", 
    392 => "00010101000001001101001011100000", 
    393 => "11100001001101100000111111111100", 
    394 => "11001011110000110010010001000101", 
    395 => "11101000000000001011001000011001", 
    396 => "11000100111110011111110011111011", 
    397 => "00000010000001110001000011011001", 
    398 => "00010111110000001110110000001110", 
    399 => "11110100000110110001000000001100", 
    400 => "11100000111001011110110111100110", 
    401 => "00010100111110101110111101000001", 
    402 => "11111100110001010001011000011010", 
    403 => "11000000011100011110010111100101", 
    404 => "00001010001110101111001000001010", 
    405 => "11110111111101010010010011110111", 
    406 => "11100011110101111110001100000000", 
    407 => "11010110000010001110111011110010", 
    408 => "11101111101111111100001100101000", 
    409 => "11100000010001110000001100001011", 
    410 => "00010111111101011110110011001100", 
    411 => "00011110111100010001110011010000", 
    412 => "01001011110101010001010011011110", 
    413 => "00100001111100110011000111011000", 
    414 => "11100100111010001101110111000101", 
    415 => "00000100000100001110100000011011", 
    416 => "00011011111100100010010100000001", 
    417 => "11101010111110011110001000001111", 
    418 => "01100010111111001111011011101011", 
    419 => "11110000111101100100000100101010", 
    420 => "00011000101011111110001011101001", 
    421 => "00011111010001000000010000100100", 
    422 => "00011101000011100000010100010110", 
    423 => "11100100111000000001111011001001", 
    424 => "11111001001110001101100100010001", 
    425 => "11110000111000001111000000001101", 
    426 => "00001011111001000010110000100101", 
    427 => "10111100001000010000111100110111", 
    428 => "11111110000001000000100011111111", 
    429 => "00010001111110111011101111111000", 
    430 => "00110101000111111111001011110111", 
    431 => "00000110000110011110111100111101", 
    432 => "01000100111001011111110011101010", 
    433 => "00001000110100001111110100001000", 
    434 => "11110101111101110000000011100110", 
    435 => "00011010000110100000011100101000", 
    436 => "11110100111010101101101111010001", 
    437 => "11001111000000111111000111100011", 
    438 => "01000001111100010010001111001101", 
    439 => "11110001001111000001101011100110", 
    440 => "10111111000000011110000100001001", 
    441 => "11110110000100010001101100010111", 
    442 => "00101010101011100010110100100100", 
    443 => "00010111000001011111101011011000", 
    444 => "01001100111111001110100101001110", 
    445 => "11101010111100111101000010110011", 
    446 => "11101010101100000010110011101011", 
    447 => "00001000000001010001011110010101", 
    448 => "00000101000011111111001111110110", 
    449 => "11111100111100101111000100000010", 
    450 => "11100111111011011101100000000010", 
    451 => "11100011111001001110100111110010", 
    452 => "00010000110100101101001111010010", 
    453 => "11101101111000000001001000110000", 
    454 => "00001011000001110000100000011010", 
    455 => "11101110111100101110100100001101", 
    456 => "11110111000010110000101000000100", 
    457 => "11111100000100000000001100001000", 
    458 => "00010001000000001111110011110111", 
    459 => "11110101000011000001111100001111", 
    460 => "11110110000100001111001100000000", 
    461 => "00010000111101010001100100001010", 
    462 => "11101100000001100000111100000000", 
    463 => "00001011111100000001010111110001", 
    464 => "11100101000011001111110011110110", 
    465 => "11110010000100010000001100010010", 
    466 => "00101100111101111111111011111100", 
    467 => "11110100000001101110111011110011", 
    468 => "11100111000101110100110010110011", 
    469 => "00010001000100001101010111110110", 
    470 => "11110111111110010001101000110000", 
    471 => "00101101110111000001110000000110", 
    472 => "00011010111101000001001100000100", 
    473 => "11110110001101101110101100001011", 
    474 => "00010110000000101111101011111101", 
    475 => "00010000111011011111011000011000", 
    476 => "11110011000110001110110011110000", 
    477 => "11111100010100011101110000111001", 
    478 => "11000001000100101100010111001101", 
    479 => "11101010000000110000111000101110", 
    480 => "00000001000001000001000000001010", 
    481 => "11111010001011010010101111101100", 
    482 => "11110111111110110010101111100000", 
    483 => "11101111111101101111111000001011", 
    484 => "00100100001001000010011000101100", 
    485 => "11111010101011110001110100100011", 
    486 => "00010110000100001111110000010010", 
    487 => "00010010111111100001001111110101", 
    488 => "11111011000100110000000100110000", 
    489 => "11111101000000001111011111101110", 
    490 => "00011010101111111010111011111010", 
    491 => "11111101000010001110010100100111", 
    492 => "00110110111110101100110000001001", 
    493 => "11011011000110101111111111011001", 
    494 => "00000001000011101111100111110001", 
    495 => "00000110000100000001011011101101", 
    496 => "00001100000101111110010011110110", 
    497 => "11101111111010100000111011101000", 
    498 => "11101111101001101110011011001000", 
    499 => "00010111111000000001101111101010", 
    500 => "00010011001110110001000000100110", 
    501 => "00000100111111010001100011101110", 
    502 => "00000101000000011111100100001000", 
    503 => "11111100000100000001000100010010", 
    504 => "11111011111011111111111100100111", 
    505 => "00011011111011000011001111110111", 
    506 => "00100001000001011110110100010001", 
    507 => "00001011001010101010110011011010", 
    508 => "11111010001000011110110111111111", 
    509 => "11101110111111011111000011011110", 
    510 => "11101110000110000010010111101100", 
    511 => "11110111000101001111001100000110", 
    512 => "11001100000010001111001100010000", 
    513 => "00100101110111101110101011111011", 
    514 => "00001011110000111111001000010011", 
    515 => "11110001000011000010010000000100", 
    516 => "11000110111111100001010111100010", 
    517 => "11101001111011111011111100010111", 
    518 => "11111110111011001101110110110001", 
    519 => "00000000000101101110000011110110", 
    520 => "11010111001010001010111011111001", 
    521 => "00000111111101000000101000001010", 
    522 => "00100010111110011111001000001110", 
    523 => "11110011111100110000011101001011", 
    524 => "00010111111000000011101100011100", 
    525 => "00010010111101110011110100001010", 
    526 => "00010011111001110000100011111001", 
    527 => "11010001000010110001111111101110", 
    528 => "01000001111010111110001111110111", 
    529 => "00010011000010100001010000111101", 
    530 => "00101111111101111110011000100000", 
    531 => "11111110110101011101111000110100", 
    532 => "11111000010011011101101011110111", 
    533 => "00010010111010011101101000001001", 
    534 => "00011000000010001111001000000010", 
    535 => "00100100000101000000010111111100", 
    536 => "11101000111100111111010000100001", 
    537 => "00010010111100010010100011101000", 
    538 => "00001010000000111110011011110110", 
    539 => "11011100111010011111011011011010", 
    540 => "00000001111101100000100100010010", 
    541 => "00100010101110100000110011001100", 
    542 => "11110011111100100001100000000111", 
    543 => "00010010000011101110000001001010", 
    544 => "11010111111101000010010100001101", 
    545 => "11100010000001000101101100001111", 
    546 => "00100011001001111110101111101000", 
    547 => "00001000000010110001010000001101", 
    548 => "00000100001110000001001011101001", 
    549 => "00000101000100110001001100010111", 
    550 => "00010000111000010001110111101110", 
    551 => "00000100000001000000010011011110", 
    552 => "00100000110011001110000001000000", 
    553 => "00101110001000110100011100010100", 
    554 => "11100101111110101111010000000101", 
    555 => "11101110111111101110100011001001", 
    556 => "00111011000110111111011000011011", 
    557 => "11100110001100001011100111101111", 
    558 => "11101100000110001110111111111100", 
    559 => "11111010000001000000001000111101", 
    560 => "11010100000111000000111111011001", 
    561 => "00001100000010001111101111100110", 
    562 => "11010000000001011111100000010010", 
    563 => "11011110000010010000110011100110", 
    564 => "11101000111111011011111000101111", 
    565 => "00000101000000000001000010110110", 
    566 => "00001011111100110000111111111101", 
    567 => "00001011000101000000100111110010", 
    568 => "00110000111001110011001111000011", 
    569 => "00000001110100001111010100101101", 
    570 => "11110010111100100010010000000001", 
    571 => "11101001001001101111111111110100", 
    572 => "00000101010001101100111111100110", 
    573 => "11010111111010110001101110100000", 
    574 => "00100011110100100011001000001000", 
    575 => "00100110111110000000010110000001", 
    576 => "00010100101101101111111101001010", 
    577 => "00110011000001111111101011010101", 
    578 => "00001101000100110001101000100000", 
    579 => "00010111111000001111101000010110", 
    580 => "00000111110100010010001011110000", 
    581 => "11100101001011010000011011100011", 
    582 => "11011011110010010001001000001000", 
    583 => "00101011101100010000111011100110", 
    584 => "11101001000010110011000100000010", 
    585 => "00101110111101011111010100101011", 
    586 => "11110111000110111011001111100100", 
    587 => "11110000000110001111000100101011", 
    588 => "01011010110100110000010001000011", 
    589 => "01000010101100010000010101010011", 
    590 => "00101001110011101100011000001011", 
    591 => "01000101000111000001011111010001", 
    592 => "10111010010100010100101011111101", 
    593 => "00000100000100110011010101000111", 
    594 => "00000110000010001111111111010001", 
    595 => "00000110000100000011100100000001", 
    596 => "11001101111110110100000101001001", 
    597 => "11110011001111111111001100100101", 
    598 => "00000010001010000000111000000101", 
    599 => "11011101101010010000111000001000", 
    600 => "00001010001100101111110000001000", 
    601 => "10111110110000110000101000011001", 
    602 => "00011110111111010100000011111110", 
    603 => "11101000111011000000001000010000", 
    604 => "00110010111001000011011111111010", 
    605 => "11110001111100100001010100010110", 
    606 => "11110111000111010010010010111110", 
    607 => "11100111000100011111101001100111", 
    608 => "11101111110001101101011111110111", 
    609 => "00010001000101011011001100011011", 
    610 => "11010100111010001111100100100101", 
    611 => "11100011000000011100010011010110", 
    612 => "00000010000111101111111100000001", 
    613 => "00011001110111101111010011001111", 
    614 => "01011110110001111111001111101100", 
    615 => "00010111111110001011010011111010", 
    616 => "10101001110101001111000111011101", 
    617 => "00001100110101110010011111110101", 
    618 => "11111111000001110011001011000000", 
    619 => "11101110000010100000010000000101", 
    620 => "00100011000001101100000000011101", 
    621 => "00100000000101111111011100001110", 
    622 => "10110001000110001110101100001111", 
    623 => "11110111000111011110111011111000", 
    624 => "11110100111100111110101000001000", 
    625 => "11100011111000110010000000011010", 
    626 => "11011000010100101101110011110110", 
    627 => "00100101001011001100010000110101", 
    628 => "00100010110110100010100000100110", 
    629 => "11110001000101101011101111001101", 
    630 => "00010111001110010000100100010010", 
    631 => "00001110111101000000100100101001", 
    632 => "10111001110011001101101111101111", 
    633 => "00000001000111000011100011000110", 
    634 => "11011011110100100010100111011111", 
    635 => "00100010111010110001100111111100", 
    636 => "00010101000001101110101000111010", 
    637 => "00111000110101000001010001000111", 
    638 => "01011001000100011111100011010001", 
    639 => "11100111110010001110000000001101", 
    640 => "00010011111100111111000111101100", 
    641 => "00000001000100110010011100001000", 
    642 => "11100101111001100001010000001000", 
    643 => "00001100001101001111101011101110", 
    644 => "11011111000101111111110011110101", 
    645 => "11111010000100101110001010111100", 
    646 => "11011101110110010001001011010001", 
    647 => "00010011000111110011000000000001", 
    648 => "11111000000000101111011111111011", 
    649 => "00011111000001001110001111111101", 
    650 => "11101011000111101110101100000010", 
    651 => "00011000110110110001010111110001", 
    652 => "11100100001001000011010111110000", 
    653 => "11100000001001111110111000001101", 
    654 => "11101000001011111111101000101010", 
    655 => "11011100000011000101000111011111", 
    656 => "00000111000011010000101000100001", 
    657 => "11011000111100110000101011101011", 
    658 => "11101011111101101111000011100011", 
    659 => "00000011000011001111010000101000", 
    660 => "10101101111101111111010011010111", 
    661 => "11011100010100100000101001010100", 
    662 => "00000010000111101110100100000001", 
    663 => "00001011110011001111111111111100", 
    664 => "00000101000000110010110100011001", 
    665 => "11010110101100001100010100001011", 
    666 => "11111011111111110001011100000101", 
    667 => "11101110000010001110110100000101", 
    668 => "11001100111100010000110011011111", 
    669 => "11111001001001001111001100001000", 
    670 => "11101010001011100001101100100101", 
    671 => "11101100110110100010001011101001", 
    672 => "00010000111011101101010100100011", 
    673 => "11011100111110001101011111010000", 
    674 => "11011111000101001111111100011010", 
    675 => "11100101110111100000010111110010", 
    676 => "00101000000010111101101011100110", 
    677 => "11101110110011011111001100100001", 
    678 => "11011111111010100000110000001111", 
    679 => "11101001111101000000110011001111", 
    680 => "11110111000100000000011011011100", 
    681 => "11111001000100010000110011111111", 
    682 => "00100001111100001111011011111101", 
    683 => "11111010001110011110000011101100", 
    684 => "00010010000101011101001100101000", 
    685 => "00110010111111110000111011101101", 
    686 => "01000101101111001110110100000110", 
    687 => "11010011111110111110100111101001", 
    688 => "11100100111010101110100100010000", 
    689 => "00000000000111001101111100111000", 
    690 => "00111010110110101111111100010001", 
    691 => "00001000111111011111010111001100", 
    692 => "11100100000000001111001011101000", 
    693 => "00001000000010011111000000111100", 
    694 => "11111000000000111111101000010110", 
    695 => "11111111001111001111101011000111", 
    696 => "11110011000100001110001111100101", 
    697 => "11011110000010011100000010101000", 
    698 => "00001110111001100000010111011011", 
    699 => "11111101110101001011110111111010", 
    700 => "11011011111101111110111000000001", 
    701 => "11010011010001011111111011101100", 
    702 => "00000110001110110001111111110101", 
    703 => "11011001000001100011100101000011", 
    704 => "11000010110010101110011000110000", 
    705 => "00110111000010000000100100101100", 
    706 => "00010101000000001101011000010001", 
    707 => "00000101000010111110010011100001", 
    708 => "00011010000101011110111011100101", 
    709 => "11100011000101000000111111110000", 
    710 => "11100100001110110010110111100111", 
    711 => "11111111111011111111001100010010", 
    712 => "11100111000110011100110111110010", 
    713 => "11111100110110101110110000111001", 
    714 => "00000001101111111010110011011001", 
    715 => "11100001000111011110111011111111", 
    716 => "11101100000011110000010000000001", 
    717 => "11111011111000011110111111110101", 
    718 => "00000111000100100001010000010110", 
    719 => "00001100000010001110101100101101", 
    720 => "11101101001100111111011100001110", 
    721 => "00101001001000010000111011100001", 
    722 => "11010100001100111110001111110011", 
    723 => "00000110110101010011111100010011", 
    724 => "00100110000101110000110111111001", 
    725 => "11110110111011000000011100100010", 
    726 => "00000110111101111111100100101100", 
    727 => "00001110111110100000011011111000", 
    728 => "11101100000000010010000011110101", 
    729 => "00010100000001111111101000010101", 
    730 => "11000100000011110100110011001111", 
    731 => "11010010001010000010111010110011", 
    732 => "11011011000100010001000011101001", 
    733 => "11110001110110110001001000100000", 
    734 => "11011000111110011111111111001101", 
    735 => "00001011000101010000000111100011", 
    736 => "00001001000101001011110000000111", 
    737 => "00001000111010110000111111100100", 
    738 => "11011110000010010000101111100111", 
    739 => "11110010000110100001001100001110", 
    740 => "11011000111110000010000000011010", 
    741 => "11101011000001101101110000000111", 
    742 => "00111111000011011111110000001000", 
    743 => "11111001000010001110111011100010", 
    744 => "11110110111101001111010100010001", 
    745 => "00000010001010100000110000000010", 
    746 => "00010111110011001110001000100001", 
    747 => "11111101000011001110011100010001", 
    748 => "00111011001101100000110011000010", 
    749 => "00101101000100001011000001101000", 
    750 => "00110100001010010001000111010111", 
    751 => "00011001110110000000000000011000", 
    752 => "00111100101101101011110100011100", 
    753 => "11111000000100001110001011100000", 
    754 => "11001011000010011110010111011111", 
    755 => "11110010000101011111101010110110", 
    756 => "11101010000110000010110011110110", 
    757 => "11101110001011110010001000001101", 
    758 => "11111111000010101010100100011011", 
    759 => "00100011001110001111011011100100", 
    760 => "11110111110111011110101111011110", 
    761 => "11101000111011111111101011100011", 
    762 => "11111010001000011111011100001011", 
    763 => "11001011000101111111110100001010", 
    764 => "11100101111000111111110000001011", 
    765 => "11111110111001011111110000100111", 
    766 => "00000101000010010001101011111001", 
    767 => "11010000111000101111001111110100" );

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

entity ReadA121136_weights_0_4_10 is
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

architecture arch of ReadA121136_weights_0_4_10 is
    component ReadA121136_weights_0_4_10_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA121136_weights_0_4_10_rom_U :  component ReadA121136_weights_0_4_10_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

