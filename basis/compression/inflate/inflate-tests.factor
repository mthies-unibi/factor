! Copyright (C) 2009 Doug Coleman.
! See https://factorcode.org/license.txt for BSD license.
USING: tools.test compression.inflate ;

{
B{
    1 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 122 121 94 119
    239 237 227 88 16 16 10 5 16 17 26 172 3 20 19 245 22 54 55
    70 245 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 139 138 112 127 12 6 234 132 254 250 9
    24 16 19 38 182 25 27 40 154 2 240 239 235 25 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    163 163 154 57 223 218 192 128 6 4 39 87 13 9 22 63 245 239
    239 242 240 240 242 243 4 17 17 25 21 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 223 219
    197 140 26 21 26 221 108 117 136 170 0 0 0 0 0 0 0 194 148
    147 138 6 4 4 5 4 33 176 175 161 5 80 81 95 251 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 122 121 105 33 246 246 234 80 241 240
    226 77 28 25 4 58 29 30 68 108 0 0 0 0 0 0 0 0 0 0 0 0 108
    109 118 250 2 24 24 39 230 225 221 203 107 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 103 102 80 101 249 245 214 208 13 6 240 142
    44 37 29 65 11 13 22 250 11 15 30 180 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 1 200 201 196 1 208 195 176 132 224 223 207 50
    253 6 15 181 251 253 0 6 240 241 239 77 14 10 246 64 33 24
    13 0 7 252 20 0 247 1 249 0 241 253 1 205 129 132 173 52
    124 123 107 32 17 16 6 15 115 117 143 209 0 0 0 0 1 255 255
    255 0 0 0 0 0 128 118 95 119 221 222 204 136 1 3 0 0 22 27
    35 0 249 239 239 0 30 22 3 0 247 4 18 0 250 248 247 0 29 26
    31 222 239 249 6 164 241 241 230 48 19 19 28 209 29 30 35
    154 87 88 109 228 1 255 255 255 0 0 0 0 0 0 0 0 0 136 136
    116 39 227 224 218 110 245 245 242 61 238 238 237 36 11 1
    254 9 32 37 20 213 7 14 40 151 2 0 246 36 6 8 20 210 8 8 5
    4 33 32 41 184 10 11 17 232 69 70 80 251 0 255 255 255 0
    255 255 255 0 255 255 255 0 255 255 255 0 255 255 255 0 255
    255 255 0 107 104 82 144 88 81 34 255 162 159 134 122 255
    255 255 0 255 255 255 0 255 255 255 0 255 255 255 0 195 194
    184 2 255 255 255 0 255 255 255 0 0 255 255 255 0 255 255
    255 0 255 255 255 0 255 255 255 0 255 255 255 0 174 171 167
    15 102 99 63 233 132 129 99 133 255 255 255 0 255 255 255 0
    255 255 255 0 255 255 255 0 255 255 255 0 255 255 255 0 255
    255 255 0 255 255 255 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    119 119 116 4 240 239 217 143 28 28 30 228 34 36 45 232 0 0
    0 0 0 0 0 0 38 38 38 4 28 28 28 2 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 4 0 0 0 0 0 0 0 0 33 33 33 3 38 38 38 9 243 243 243
    252 14 12 44 24 233 235 4 89 250 251 216 126 92 91 76 241 8
    9 21 235 69 69 70 2 250 250 249 214 0 0 0 223 0 0 0 0 0 0 0
    0 0 0 0 0 2 0 0 0 0 0 0 0 0 247 247 247 255 25 25 25 11 45
    46 48 26 239 239 251 219 3 4 1 114 233 236 1 254 21 21 20
    113 12 11 2 54 1 2 2 215 206 206 206 230 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 1 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 0 46 46
    47 8 56 56 49 70 23 21 9 145 237 239 248 180 247 247 2 148
    225 225 224 234 241 241 240 248 205 205 205 247 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 255 255 255 0 255 255 255 0 255 255
    255 0 255 255 255 0 255 255 255 0 255 255 255 0 107 106 96
    75 90 89 73 75 255 255 255 0 255 255 255 0 255 255 255 0
    255 255 255 0 255 255 255 0 255 255 255 0 255 255 255 0 255
    255 255 0
}
} [
B{
    56 141 99 252 255 255 63 3 41 160 170 50 174 252 253 219
    199 17 2 2 92 172 2 130 82 107 152 69 132 191 138 153 153
    187 125 37 70 115 119 87 65 61 15 219 171 150 127 191 56 37
    4 132 213 182 73 74 107 204 98 250 240 254 181 36 49 154 23
    47 158 101 121 255 214 129 6 54 22 245 112 94 78 49 251 175
    239 223 127 250 240 225 211 103 22 65 65 73 81 98 12 184
    127 251 104 143 148 168 212 221 156 210 142 85 80 161 67 83
    38 119 177 177 176 176 178 40 110 88 191 144 53 32 48 254
    55 166 127 51 21 191 125 123 21 240 241 195 35 95 25 73 22
    43 89 57 151 28 100 249 156 220 178 95 76 18 18 234 207 30
    222 61 157 141 174 57 61 45 32 245 231 215 107 23 120 217
    62 244 233 168 202 58 114 243 138 253 226 230 151 219 130
    174 142 241 196 201 35 140 23 14 111 104 121 112 255 188
    209 95 54 254 173 191 255 50 176 125 248 248 222 151 143
    235 155 131 162 4 47 3 251 31 17 134 239 140 63 25 62 254
    101 60 219 216 178 214 164 166 58 91 65 80 128 141 191 184
    180 255 34 3 3 3 3 35 44 26 27 202 226 203 239 222 59 211
    193 200 204 192 32 38 173 204 240 243 253 123 6 57 49 102
    134 239 44 66 12 191 126 124 103 144 149 146 191 247 254 39
    219 146 143 31 159 25 8 11 203 92 148 149 83 158 21 30 145
    251 132 17 57 29 116 116 148 168 63 126 112 43 239 235 215
    79 182 239 222 189 85 225 102 252 199 169 160 42 114 149
    157 79 99 58 19 195 55 21 54 14 145 75 28 28 172 44 138 10
    154 59 184 184 5 95 184 186 5 252 102 248 255 255 63 86 156
    157 17 52 33 34 80 233 255 162 249 109 85 232 114 135 15
    237 96 130 177 177 106 94 183 122 57 127 90 178 253 203 150
    198 228 86 92 22 192 48 19 122 168 150 151 151 176 124 120
    127 179 95 70 70 238 137 146 138 238 11 152 184 154 154 26
    139 140 140 12 134 122 22 24 67 81 81 145 89 77 77 141 243
    243 231 207 127 248 120 116 36 94 190 102 137 252 245 251
    70 93 76 180 207 71 14 78 209 215 174 174 110 76 191 126
    253 188 198 192 192 112 31 217 0 184 137 223 191 127 255 47
    41 41 201 173 171 103 32 245 254 253 239 219 204 44 140 69
    47 223 48 254 19 21 21 41 228 225 102 50 99 100 98 186 126
    238 220 185 103 24 233 0 61 55 234 233 233 115 88 88 24 186
    137 139 114 78 124 251 254 199 150 239 223 153 166 60 124
    248 224 213 199 143 31 126 156 61 123 246 59 186 1 184 99
    33 43 193 59 42 210 211 155 80 32 2 0 2 32 94 128
} zlib-inflate
] unit-test
