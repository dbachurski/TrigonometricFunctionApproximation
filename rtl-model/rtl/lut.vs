`include "quadra.vh"

module lut
(
    input  x1_t  x_m,
    output a_t   a,
    output b_t   b,
    output c_t   c
);
    // Read coefficients:

    always_comb
    unique casez (x_m)
        7'b0000000: a = 23'sh52BEC3;
        7'b0000001: a = 23'sh542E66;
        7'b0000010: a = 23'sh55A8FD;
        7'b0000011: a = 23'sh572E2A;
        7'b0000100: a = 23'sh58BD8A;
        7'b0000101: a = 23'sh5A56BC;
        7'b0000110: a = 23'sh5BF957;
        7'b0000111: a = 23'sh5DA4F4;
        7'b0001000: a = 23'sh5F5927;
        7'b0001001: a = 23'sh611584;
        7'b0001010: a = 23'sh62D99B;
        7'b0001011: a = 23'sh64A4FC;
        7'b0001100: a = 23'sh667734;
        7'b0001101: a = 23'sh684FCD;
        7'b0001110: a = 23'sh6A2E53;
        7'b0001111: a = 23'sh6C124C;
        7'b0010000: a = 23'sh6DFB42;
        7'b0010001: a = 23'sh6FE8B8;
        7'b0010010: a = 23'sh71DA34;
        7'b0010011: a = 23'sh73CF39;
        7'b0010100: a = 23'sh75C74A;
        7'b0010101: a = 23'sh77C1EA;
        7'b0010110: a = 23'sh79BE99;
        7'b0010111: a = 23'sh7BBCD8;
        7'b0011000: a = 23'sh7DBC28;
        7'b0011001: a = 23'sh7FBC09;
        7'b0011010: a = 23'sh1BBFB;
        7'b0011011: a = 23'sh3BB7E;
        7'b0011100: a = 23'sh5BA12;
        7'b0011101: a = 23'sh7B738;
        7'b0011110: a = 23'sh9B270;
        7'b0011111: a = 23'shBAB3C;
        7'b0100000: a = 23'shDA11C;
        7'b0100001: a = 23'shF9395;
        7'b0100010: a = 23'sh118228;
        7'b0100011: a = 23'sh136C5B;
        7'b0100100: a = 23'sh1551B4;
        7'b0100101: a = 23'sh1731B7;
        7'b0100110: a = 23'sh190BEF;
        7'b0100111: a = 23'sh1ADFE4;
        7'b0101000: a = 23'sh1CAD21;
        7'b0101001: a = 23'sh1E7332;
        7'b0101010: a = 23'sh2031A7;
        7'b0101011: a = 23'sh21E810;
        7'b0101100: a = 23'sh2395FF;
        7'b0101101: a = 23'sh253B09;
        7'b0101110: a = 23'sh26D6C4;
        7'b0101111: a = 23'sh2868CA;
        7'b0110000: a = 23'sh29F0B6;
        7'b0110001: a = 23'sh2B6E25;
        7'b0110010: a = 23'sh2CE0BA;
        7'b0110011: a = 23'sh2E4816;
        7'b0110100: a = 23'sh2FA3E1;
        7'b0110101: a = 23'sh30F3C2;
        7'b0110110: a = 23'sh323768;
        7'b0110111: a = 23'sh336E80;
        7'b0111000: a = 23'sh3498BC;
        7'b0111001: a = 23'sh35B5D2;
        7'b0111010: a = 23'sh36C57B;
        7'b0111011: a = 23'sh37C774;
        7'b0111100: a = 23'sh38BB7A;
        7'b0111101: a = 23'sh39A152;
        7'b0111110: a = 23'sh3A78C2;
        7'b0111111: a = 23'sh3B4194;
        7'b1000000: a = 23'sh3BFB96;
        7'b1000001: a = 23'sh3CA69A;
        7'b1000010: a = 23'sh3D4274;
        7'b1000011: a = 23'sh3DCEFD;
        7'b1000100: a = 23'sh3E4C14;
        7'b1000101: a = 23'sh3EB997;
        7'b1000110: a = 23'sh3F176D;
        7'b1000111: a = 23'sh3F657D;
        7'b1001000: a = 23'sh3FA3B4;
        7'b1001001: a = 23'sh3FD202;
        7'b1001010: a = 23'sh3FF05D;
        7'b1001011: a = 23'sh3FFEBB;
        7'b1001100: a = 23'sh3FFD1A;
        7'b1001101: a = 23'sh3FEB7B;
        7'b1001110: a = 23'sh3FC9E0;
        7'b1001111: a = 23'sh3F9854;
        7'b1010000: a = 23'sh3F56E2;
        7'b1010001: a = 23'sh3F059A;
        7'b1010010: a = 23'sh3EA491;
        7'b1010011: a = 23'sh3E33E0;
        7'b1010100: a = 23'sh3DB3A2;
        7'b1010101: a = 23'sh3D23F7;
        7'b1010110: a = 23'sh3C8504;
        7'b1010111: a = 23'sh3BD6EF;
        7'b1011000: a = 23'sh3B19E5;
        7'b1011001: a = 23'sh3A4E15;
        7'b1011010: a = 23'sh3973B2;
        7'b1011011: a = 23'sh388AF2;
        7'b1011100: a = 23'sh379410;
        7'b1011101: a = 23'sh368F49;
        7'b1011110: a = 23'sh357CDF;
        7'b1011111: a = 23'sh345D16;
        7'b1100000: a = 23'sh333035;
        7'b1100001: a = 23'sh31F689;
        7'b1100010: a = 23'sh30B05F;
        7'b1100011: a = 23'sh2F5E0A;
        7'b1100100: a = 23'sh2DFFDD;
        7'b1100101: a = 23'sh2C9631;
        7'b1100110: a = 23'sh2B215F;
        7'b1100111: a = 23'sh29A1C5;
        7'b1101000: a = 23'sh2817C3;
        7'b1101001: a = 23'sh2683BC;
        7'b1101010: a = 23'sh24E613;
        7'b1101011: a = 23'sh233F31;
        7'b1101100: a = 23'sh218F80;
        7'b1101101: a = 23'sh1FD76A;
        7'b1101110: a = 23'sh1E1760;
        7'b1101111: a = 23'sh1C4FCF;
        7'b1110000: a = 23'sh1A812B;
        7'b1110001: a = 23'sh18ABE6;
        7'b1110010: a = 23'sh16D077;
        7'b1110011: a = 23'sh14EF54;
        7'b1110100: a = 23'sh1308F4;
        7'b1110101: a = 23'sh111DD3;
        7'b1110110: a = 23'shF2E6B;
        7'b1110111: a = 23'shD3B37;
        7'b1111000: a = 23'shB44B4;
        7'b1111001: a = 23'sh94B60;
        7'b1111010: a = 23'sh74FB9;
        7'b1111011: a = 23'sh5523E;
        7'b1111100: a = 23'sh3536F;
        7'b1111101: a = 23'sh153CB;
        7'b1111110: a = 23'sh7F53D2;
        7'b1111111: a = 23'sh7D5404;
        default: a = 'x;
    endcase

    always_comb
    unique casez (x_m)
        7'b0000000: b = 18'sh16A0C;
        7'b0000001: b = 18'sh1752F;
        7'b0000010: b = 18'sh17FF4;
        7'b0000011: b = 18'sh18A5A;
        7'b0000100: b = 18'sh1945C;
        7'b0000101: b = 18'sh19DFA;
        7'b0000110: b = 18'sh1A730;
        7'b0000111: b = 18'sh1AFFD;
        7'b0001000: b = 18'sh1B85E;
        7'b0001001: b = 18'sh1C050;
        7'b0001010: b = 18'sh1C7D2;
        7'b0001011: b = 18'sh1CEE2;
        7'b0001100: b = 18'sh1D57F;
        7'b0001101: b = 18'sh1DBA6;
        7'b0001110: b = 18'sh1E156;
        7'b0001111: b = 18'sh1E68E;
        7'b0010000: b = 18'sh1EB4D;
        7'b0010001: b = 18'sh1EF91;
        7'b0010010: b = 18'sh1F358;
        7'b0010011: b = 18'sh1F6A4;
        7'b0010100: b = 18'sh1F970;
        7'b0010101: b = 18'sh1FBC0;
        7'b0010110: b = 18'sh1FD90;
        7'b0010111: b = 18'sh1FEE0;
        7'b0011000: b = 18'sh1FFB1;
        7'b0011001: b = 18'sh1FFFF;
        7'b0011010: b = 18'sh1FFD3;
        7'b0011011: b = 18'sh1FF24;
        7'b0011100: b = 18'sh1FDF6;
        7'b0011101: b = 18'sh1FC47;
        7'b0011110: b = 18'sh1FA1A;
        7'b0011111: b = 18'sh1F76E;
        7'b0100000: b = 18'sh1F444;
        7'b0100001: b = 18'sh1F09E;
        7'b0100010: b = 18'sh1EC7B;
        7'b0100011: b = 18'sh1E7DD;
        7'b0100100: b = 18'sh1E2C5;
        7'b0100101: b = 18'sh1DD34;
        7'b0100110: b = 18'sh1D72C;
        7'b0100111: b = 18'sh1D0AF;
        7'b0101000: b = 18'sh1C9BD;
        7'b0101001: b = 18'sh1C259;
        7'b0101010: b = 18'sh1BA84;
        7'b0101011: b = 18'sh1B240;
        7'b0101100: b = 18'sh1A990;
        7'b0101101: b = 18'sh1A076;
        7'b0101110: b = 18'sh196F4;
        7'b0101111: b = 18'sh18D0C;
        7'b0110000: b = 18'sh182C0;
        7'b0110001: b = 18'sh17814;
        7'b0110010: b = 18'sh16D0A;
        7'b0110011: b = 18'sh161A4;
        7'b0110100: b = 18'sh155E6;
        7'b0110101: b = 18'sh149D4;
        7'b0110110: b = 18'sh13D6E;
        7'b0110111: b = 18'sh130B8;
        7'b0111000: b = 18'sh123B8;
        7'b0111001: b = 18'sh1166D;
        7'b0111010: b = 18'sh108DE;
        7'b0111011: b = 18'shFB0C;
        7'b0111100: b = 18'shECFA;
        7'b0111101: b = 18'shDEAE;
        7'b0111110: b = 18'shD02B;
        7'b0111111: b = 18'shC174;
        7'b1000000: b = 18'shB28B;
        7'b1000001: b = 18'shA376;
        7'b1000010: b = 18'sh9439;
        7'b1000011: b = 18'sh84D6;
        7'b1000100: b = 18'sh7552;
        7'b1000101: b = 18'sh65B2;
        7'b1000110: b = 18'sh55F7;
        7'b1000111: b = 18'sh4627;
        7'b1001000: b = 18'sh3646;
        7'b1001001: b = 18'sh2656;
        7'b1001010: b = 18'sh165E;
        7'b1001011: b = 18'sh065F;
        7'b1001100: b = 18'sh3F65F;
        7'b1001101: b = 18'sh3E662;
        7'b1001110: b = 18'sh3D66A;
        7'b1001111: b = 18'sh3C67E;
        7'b1010000: b = 18'sh3B6A0;
        7'b1010001: b = 18'sh3A6D4;
        7'b1010010: b = 18'sh3971E;
        7'b1010011: b = 18'sh38782;
        7'b1010100: b = 18'sh37805;
        7'b1010101: b = 18'sh368AA;
        7'b1010110: b = 18'sh35974;
        7'b1010111: b = 18'sh34A68;
        7'b1011000: b = 18'sh33B8A;
        7'b1011001: b = 18'sh32CDC;
        7'b1011010: b = 18'sh31E64;
        7'b1011011: b = 18'sh31024;
        7'b1011100: b = 18'sh3021F;
        7'b1011101: b = 18'sh2F45A;
        7'b1011110: b = 18'sh2E6D8;
        7'b1011111: b = 18'sh2D99D;
        7'b1100000: b = 18'sh2CCAB;
        7'b1100001: b = 18'sh2C006;
        7'b1100010: b = 18'sh2B3B0;
        7'b1100011: b = 18'sh2A7AE;
        7'b1100100: b = 18'sh29C02;
        7'b1100101: b = 18'sh290B0;
        7'b1100110: b = 18'sh285B8;
        7'b1100111: b = 18'sh27B20;
        7'b1101000: b = 18'sh270E8;
        7'b1101001: b = 18'sh26714;
        7'b1101010: b = 18'sh25DA7;
        7'b1101011: b = 18'sh254A2;
        7'b1101100: b = 18'sh24C08;
        7'b1101101: b = 18'sh243DA;
        7'b1101110: b = 18'sh23C1C;
        7'b1101111: b = 18'sh234D0;
        7'b1110000: b = 18'sh22DF5;
        7'b1110001: b = 18'sh22790;
        7'b1110010: b = 18'sh221A0;
        7'b1110011: b = 18'sh21C28;
        7'b1110100: b = 18'sh21728;
        7'b1110101: b = 18'sh212A4;
        7'b1110110: b = 18'sh20E9A;
        7'b1110111: b = 18'sh20B0C;
        7'b1111000: b = 18'sh207FC;
        7'b1111001: b = 18'sh2056A;
        7'b1111010: b = 18'sh20357;
        7'b1111011: b = 18'sh201C2;
        7'b1111100: b = 18'sh200AE;
        7'b1111101: b = 18'sh20019;
        7'b1111110: b = 18'sh20004;
        7'b1111111: b = 18'sh2006F;
        default: b = 'x;
    endcase

    always_comb
    unique casez (x_m)
        7'b0000000: c = 13'shB3A;
        7'b0000001: c = 13'shADD;
        7'b0000010: c = 13'shA7E;
        7'b0000011: c = 13'shA1C;
        7'b0000100: c = 13'sh9B8;
        7'b0000101: c = 13'sh950;
        7'b0000110: c = 13'sh8E7;
        7'b0000111: c = 13'sh87C;
        7'b0001000: c = 13'sh80E;
        7'b0001001: c = 13'sh79E;
        7'b0001010: c = 13'sh72D;
        7'b0001011: c = 13'sh6BA;
        7'b0001100: c = 13'sh645;
        7'b0001101: c = 13'sh5CE;
        7'b0001110: c = 13'sh556;
        7'b0001111: c = 13'sh4DD;
        7'b0010000: c = 13'sh462;
        7'b0010001: c = 13'sh3E7;
        7'b0010010: c = 13'sh36A;
        7'b0010011: c = 13'sh2ED;
        7'b0010100: c = 13'sh26E;
        7'b0010101: c = 13'sh1F0;
        7'b0010110: c = 13'sh170;
        7'b0010111: c = 13'sh0F1;
        7'b0011000: c = 13'sh071;
        7'b0011001: c = 13'sh1FF1;
        7'b0011010: c = 13'sh1F71;
        7'b0011011: c = 13'sh1EF1;
        7'b0011100: c = 13'sh1E72;
        7'b0011101: c = 13'sh1DF2;
        7'b0011110: c = 13'sh1D74;
        7'b0011111: c = 13'sh1CF6;
        7'b0100000: c = 13'sh1C78;
        7'b0100001: c = 13'sh1BFC;
        7'b0100010: c = 13'sh1B80;
        7'b0100011: c = 13'sh1B06;
        7'b0100100: c = 13'sh1A8E;
        7'b0100101: c = 13'sh1A16;
        7'b0100110: c = 13'sh19A0;
        7'b0100111: c = 13'sh192B;
        7'b0101000: c = 13'sh18B8;
        7'b0101001: c = 13'sh1847;
        7'b0101010: c = 13'sh17D8;
        7'b0101011: c = 13'sh176B;
        7'b0101100: c = 13'sh1700;
        7'b0101101: c = 13'sh1698;
        7'b0101110: c = 13'sh1631;
        7'b0101111: c = 13'sh15CD;
        7'b0110000: c = 13'sh156C;
        7'b0110001: c = 13'sh150D;
        7'b0110010: c = 13'sh14B1;
        7'b0110011: c = 13'sh1458;
        7'b0110100: c = 13'sh1402;
        7'b0110101: c = 13'sh13AE;
        7'b0110110: c = 13'sh135E;
        7'b0110111: c = 13'sh1312;
        7'b0111000: c = 13'sh12C8;
        7'b0111001: c = 13'sh1282;
        7'b0111010: c = 13'sh123E;
        7'b0111011: c = 13'sh11FE;
        7'b0111100: c = 13'sh11C2;
        7'b0111101: c = 13'sh118A;
        7'b0111110: c = 13'sh1155;
        7'b0111111: c = 13'sh1124;
        7'b1000000: c = 13'sh10F6;
        7'b1000001: c = 13'sh10CC;
        7'b1000010: c = 13'sh10A6;
        7'b1000011: c = 13'sh1084;
        7'b1000100: c = 13'sh1066;
        7'b1000101: c = 13'sh104C;
        7'b1000110: c = 13'sh1035;
        7'b1000111: c = 13'sh1022;
        7'b1001000: c = 13'sh1014;
        7'b1001001: c = 13'sh1009;
        7'b1001010: c = 13'sh1002;
        7'b1001011: c = 13'sh1000;
        7'b1001100: c = 13'sh1002;
        7'b1001101: c = 13'sh1007;
        7'b1001110: c = 13'sh1010;
        7'b1001111: c = 13'sh101E;
        7'b1010000: c = 13'sh102F;
        7'b1010001: c = 13'sh1044;
        7'b1010010: c = 13'sh105E;
        7'b1010011: c = 13'sh107A;
        7'b1010100: c = 13'sh109C;
        7'b1010101: c = 13'sh10C0;
        7'b1010110: c = 13'sh10EA;
        7'b1010111: c = 13'sh1116;
        7'b1011000: c = 13'sh1146;
        7'b1011001: c = 13'sh117A;
        7'b1011010: c = 13'sh11B2;
        7'b1011011: c = 13'sh11EC;
        7'b1011100: c = 13'sh122B;
        7'b1011101: c = 13'sh126D;
        7'b1011110: c = 13'sh12B2;
        7'b1011111: c = 13'sh12FB;
        7'b1100000: c = 13'sh1348;
        7'b1100001: c = 13'sh1396;
        7'b1100010: c = 13'sh13E9;
        7'b1100011: c = 13'sh143E;
        7'b1100100: c = 13'sh1496;
        7'b1100101: c = 13'sh14F2;
        7'b1100110: c = 13'sh1550;
        7'b1100111: c = 13'sh15B0;
        7'b1101000: c = 13'sh1613;
        7'b1101001: c = 13'sh1678;
        7'b1101010: c = 13'sh16E0;
        7'b1101011: c = 13'sh174B;
        7'b1101100: c = 13'sh17B8;
        7'b1101101: c = 13'sh1826;
        7'b1101110: c = 13'sh1896;
        7'b1101111: c = 13'sh1909;
        7'b1110000: c = 13'sh197D;
        7'b1110001: c = 13'sh19F2;
        7'b1110010: c = 13'sh1A6A;
        7'b1110011: c = 13'sh1AE2;
        7'b1110100: c = 13'sh1B5C;
        7'b1110101: c = 13'sh1BD8;
        7'b1110110: c = 13'sh1C54;
        7'b1110111: c = 13'sh1CD0;
        7'b1111000: c = 13'sh1D4E;
        7'b1111001: c = 13'sh1DCD;
        7'b1111010: c = 13'sh1E4C;
        7'b1111011: c = 13'sh1ECC;
        7'b1111100: c = 13'sh1F4B;
        7'b1111101: c = 13'sh1FCB;
        7'b1111110: c = 13'sh04B;
        7'b1111111: c = 13'sh0CB;
        default: c = 'x;
    endcase

endmodule


