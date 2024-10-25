
#include "isr_handlers.h"
#include "idt.h"

void fill_idt() {
extern void isr_handler_asm_0();
idt_set_descriptor(0, isr_handler_asm_0, 0x8E);
extern void isr_handler_asm_1();
idt_set_descriptor(1, isr_handler_asm_1, 0x8E);
extern void isr_handler_asm_2();
idt_set_descriptor(2, isr_handler_asm_2, 0x8E);
extern void isr_handler_asm_3();
idt_set_descriptor(3, isr_handler_asm_3, 0x8E);
extern void isr_handler_asm_4();
idt_set_descriptor(4, isr_handler_asm_4, 0x8E);
extern void isr_handler_asm_5();
idt_set_descriptor(5, isr_handler_asm_5, 0x8E);
extern void isr_handler_asm_6();
idt_set_descriptor(6, isr_handler_asm_6, 0x8E);
extern void isr_handler_asm_7();
idt_set_descriptor(7, isr_handler_asm_7, 0x8E);
extern void isr_handler_asm_8();
idt_set_descriptor(8, isr_handler_asm_8, 0x8E);
extern void isr_handler_asm_9();
idt_set_descriptor(9, isr_handler_asm_9, 0x8E);
extern void isr_handler_asm_10();
idt_set_descriptor(10, isr_handler_asm_10, 0x8E);
extern void isr_handler_asm_11();
idt_set_descriptor(11, isr_handler_asm_11, 0x8E);
extern void isr_handler_asm_12();
idt_set_descriptor(12, isr_handler_asm_12, 0x8E);
extern void isr_handler_asm_13();
idt_set_descriptor(13, isr_handler_asm_13, 0x8E);
extern void isr_handler_asm_14();
idt_set_descriptor(14, isr_handler_asm_14, 0x8E);
extern void isr_handler_asm_15();
idt_set_descriptor(15, isr_handler_asm_15, 0x8E);
extern void isr_handler_asm_16();
idt_set_descriptor(16, isr_handler_asm_16, 0x8E);
extern void isr_handler_asm_17();
idt_set_descriptor(17, isr_handler_asm_17, 0x8E);
extern void isr_handler_asm_18();
idt_set_descriptor(18, isr_handler_asm_18, 0x8E);
extern void isr_handler_asm_19();
idt_set_descriptor(19, isr_handler_asm_19, 0x8E);
extern void isr_handler_asm_20();
idt_set_descriptor(20, isr_handler_asm_20, 0x8E);
extern void isr_handler_asm_21();
idt_set_descriptor(21, isr_handler_asm_21, 0x8E);
extern void isr_handler_asm_22();
idt_set_descriptor(22, isr_handler_asm_22, 0x8E);
extern void isr_handler_asm_23();
idt_set_descriptor(23, isr_handler_asm_23, 0x8E);
extern void isr_handler_asm_24();
idt_set_descriptor(24, isr_handler_asm_24, 0x8E);
extern void isr_handler_asm_25();
idt_set_descriptor(25, isr_handler_asm_25, 0x8E);
extern void isr_handler_asm_26();
idt_set_descriptor(26, isr_handler_asm_26, 0x8E);
extern void isr_handler_asm_27();
idt_set_descriptor(27, isr_handler_asm_27, 0x8E);
extern void isr_handler_asm_28();
idt_set_descriptor(28, isr_handler_asm_28, 0x8E);
extern void isr_handler_asm_29();
idt_set_descriptor(29, isr_handler_asm_29, 0x8E);
extern void isr_handler_asm_30();
idt_set_descriptor(30, isr_handler_asm_30, 0x8E);
extern void isr_handler_asm_31();
idt_set_descriptor(31, isr_handler_asm_31, 0x8E);
extern void isr_handler_asm_32();
idt_set_descriptor(32, isr_handler_asm_32, 0x8E);
extern void isr_handler_asm_33();
idt_set_descriptor(33, isr_handler_asm_33, 0x8E);
extern void isr_handler_asm_34();
idt_set_descriptor(34, isr_handler_asm_34, 0x8E);
extern void isr_handler_asm_35();
idt_set_descriptor(35, isr_handler_asm_35, 0x8E);
extern void isr_handler_asm_36();
idt_set_descriptor(36, isr_handler_asm_36, 0x8E);
extern void isr_handler_asm_37();
idt_set_descriptor(37, isr_handler_asm_37, 0x8E);
extern void isr_handler_asm_38();
idt_set_descriptor(38, isr_handler_asm_38, 0x8E);
extern void isr_handler_asm_39();
idt_set_descriptor(39, isr_handler_asm_39, 0x8E);
extern void isr_handler_asm_40();
idt_set_descriptor(40, isr_handler_asm_40, 0x8E);
extern void isr_handler_asm_41();
idt_set_descriptor(41, isr_handler_asm_41, 0x8E);
extern void isr_handler_asm_42();
idt_set_descriptor(42, isr_handler_asm_42, 0x8E);
extern void isr_handler_asm_43();
idt_set_descriptor(43, isr_handler_asm_43, 0x8E);
extern void isr_handler_asm_44();
idt_set_descriptor(44, isr_handler_asm_44, 0x8E);
extern void isr_handler_asm_45();
idt_set_descriptor(45, isr_handler_asm_45, 0x8E);
extern void isr_handler_asm_46();
idt_set_descriptor(46, isr_handler_asm_46, 0x8E);
extern void isr_handler_asm_47();
idt_set_descriptor(47, isr_handler_asm_47, 0x8E);
extern void isr_handler_asm_48();
idt_set_descriptor(48, isr_handler_asm_48, 0x8E);
extern void isr_handler_asm_49();
idt_set_descriptor(49, isr_handler_asm_49, 0x8E);
extern void isr_handler_asm_50();
idt_set_descriptor(50, isr_handler_asm_50, 0x8E);
extern void isr_handler_asm_51();
idt_set_descriptor(51, isr_handler_asm_51, 0x8E);
extern void isr_handler_asm_52();
idt_set_descriptor(52, isr_handler_asm_52, 0x8E);
extern void isr_handler_asm_53();
idt_set_descriptor(53, isr_handler_asm_53, 0x8E);
extern void isr_handler_asm_54();
idt_set_descriptor(54, isr_handler_asm_54, 0x8E);
extern void isr_handler_asm_55();
idt_set_descriptor(55, isr_handler_asm_55, 0x8E);
extern void isr_handler_asm_56();
idt_set_descriptor(56, isr_handler_asm_56, 0x8E);
extern void isr_handler_asm_57();
idt_set_descriptor(57, isr_handler_asm_57, 0x8E);
extern void isr_handler_asm_58();
idt_set_descriptor(58, isr_handler_asm_58, 0x8E);
extern void isr_handler_asm_59();
idt_set_descriptor(59, isr_handler_asm_59, 0x8E);
extern void isr_handler_asm_60();
idt_set_descriptor(60, isr_handler_asm_60, 0x8E);
extern void isr_handler_asm_61();
idt_set_descriptor(61, isr_handler_asm_61, 0x8E);
extern void isr_handler_asm_62();
idt_set_descriptor(62, isr_handler_asm_62, 0x8E);
extern void isr_handler_asm_63();
idt_set_descriptor(63, isr_handler_asm_63, 0x8E);
extern void isr_handler_asm_64();
idt_set_descriptor(64, isr_handler_asm_64, 0x8E);
extern void isr_handler_asm_65();
idt_set_descriptor(65, isr_handler_asm_65, 0x8E);
extern void isr_handler_asm_66();
idt_set_descriptor(66, isr_handler_asm_66, 0x8E);
extern void isr_handler_asm_67();
idt_set_descriptor(67, isr_handler_asm_67, 0x8E);
extern void isr_handler_asm_68();
idt_set_descriptor(68, isr_handler_asm_68, 0x8E);
extern void isr_handler_asm_69();
idt_set_descriptor(69, isr_handler_asm_69, 0x8E);
extern void isr_handler_asm_70();
idt_set_descriptor(70, isr_handler_asm_70, 0x8E);
extern void isr_handler_asm_71();
idt_set_descriptor(71, isr_handler_asm_71, 0x8E);
extern void isr_handler_asm_72();
idt_set_descriptor(72, isr_handler_asm_72, 0x8E);
extern void isr_handler_asm_73();
idt_set_descriptor(73, isr_handler_asm_73, 0x8E);
extern void isr_handler_asm_74();
idt_set_descriptor(74, isr_handler_asm_74, 0x8E);
extern void isr_handler_asm_75();
idt_set_descriptor(75, isr_handler_asm_75, 0x8E);
extern void isr_handler_asm_76();
idt_set_descriptor(76, isr_handler_asm_76, 0x8E);
extern void isr_handler_asm_77();
idt_set_descriptor(77, isr_handler_asm_77, 0x8E);
extern void isr_handler_asm_78();
idt_set_descriptor(78, isr_handler_asm_78, 0x8E);
extern void isr_handler_asm_79();
idt_set_descriptor(79, isr_handler_asm_79, 0x8E);
extern void isr_handler_asm_80();
idt_set_descriptor(80, isr_handler_asm_80, 0x8E);
extern void isr_handler_asm_81();
idt_set_descriptor(81, isr_handler_asm_81, 0x8E);
extern void isr_handler_asm_82();
idt_set_descriptor(82, isr_handler_asm_82, 0x8E);
extern void isr_handler_asm_83();
idt_set_descriptor(83, isr_handler_asm_83, 0x8E);
extern void isr_handler_asm_84();
idt_set_descriptor(84, isr_handler_asm_84, 0x8E);
extern void isr_handler_asm_85();
idt_set_descriptor(85, isr_handler_asm_85, 0x8E);
extern void isr_handler_asm_86();
idt_set_descriptor(86, isr_handler_asm_86, 0x8E);
extern void isr_handler_asm_87();
idt_set_descriptor(87, isr_handler_asm_87, 0x8E);
extern void isr_handler_asm_88();
idt_set_descriptor(88, isr_handler_asm_88, 0x8E);
extern void isr_handler_asm_89();
idt_set_descriptor(89, isr_handler_asm_89, 0x8E);
extern void isr_handler_asm_90();
idt_set_descriptor(90, isr_handler_asm_90, 0x8E);
extern void isr_handler_asm_91();
idt_set_descriptor(91, isr_handler_asm_91, 0x8E);
extern void isr_handler_asm_92();
idt_set_descriptor(92, isr_handler_asm_92, 0x8E);
extern void isr_handler_asm_93();
idt_set_descriptor(93, isr_handler_asm_93, 0x8E);
extern void isr_handler_asm_94();
idt_set_descriptor(94, isr_handler_asm_94, 0x8E);
extern void isr_handler_asm_95();
idt_set_descriptor(95, isr_handler_asm_95, 0x8E);
extern void isr_handler_asm_96();
idt_set_descriptor(96, isr_handler_asm_96, 0x8E);
extern void isr_handler_asm_97();
idt_set_descriptor(97, isr_handler_asm_97, 0x8E);
extern void isr_handler_asm_98();
idt_set_descriptor(98, isr_handler_asm_98, 0x8E);
extern void isr_handler_asm_99();
idt_set_descriptor(99, isr_handler_asm_99, 0x8E);
extern void isr_handler_asm_100();
idt_set_descriptor(100, isr_handler_asm_100, 0x8E);
extern void isr_handler_asm_101();
idt_set_descriptor(101, isr_handler_asm_101, 0x8E);
extern void isr_handler_asm_102();
idt_set_descriptor(102, isr_handler_asm_102, 0x8E);
extern void isr_handler_asm_103();
idt_set_descriptor(103, isr_handler_asm_103, 0x8E);
extern void isr_handler_asm_104();
idt_set_descriptor(104, isr_handler_asm_104, 0x8E);
extern void isr_handler_asm_105();
idt_set_descriptor(105, isr_handler_asm_105, 0x8E);
extern void isr_handler_asm_106();
idt_set_descriptor(106, isr_handler_asm_106, 0x8E);
extern void isr_handler_asm_107();
idt_set_descriptor(107, isr_handler_asm_107, 0x8E);
extern void isr_handler_asm_108();
idt_set_descriptor(108, isr_handler_asm_108, 0x8E);
extern void isr_handler_asm_109();
idt_set_descriptor(109, isr_handler_asm_109, 0x8E);
extern void isr_handler_asm_110();
idt_set_descriptor(110, isr_handler_asm_110, 0x8E);
extern void isr_handler_asm_111();
idt_set_descriptor(111, isr_handler_asm_111, 0x8E);
extern void isr_handler_asm_112();
idt_set_descriptor(112, isr_handler_asm_112, 0x8E);
extern void isr_handler_asm_113();
idt_set_descriptor(113, isr_handler_asm_113, 0x8E);
extern void isr_handler_asm_114();
idt_set_descriptor(114, isr_handler_asm_114, 0x8E);
extern void isr_handler_asm_115();
idt_set_descriptor(115, isr_handler_asm_115, 0x8E);
extern void isr_handler_asm_116();
idt_set_descriptor(116, isr_handler_asm_116, 0x8E);
extern void isr_handler_asm_117();
idt_set_descriptor(117, isr_handler_asm_117, 0x8E);
extern void isr_handler_asm_118();
idt_set_descriptor(118, isr_handler_asm_118, 0x8E);
extern void isr_handler_asm_119();
idt_set_descriptor(119, isr_handler_asm_119, 0x8E);
extern void isr_handler_asm_120();
idt_set_descriptor(120, isr_handler_asm_120, 0x8E);
extern void isr_handler_asm_121();
idt_set_descriptor(121, isr_handler_asm_121, 0x8E);
extern void isr_handler_asm_122();
idt_set_descriptor(122, isr_handler_asm_122, 0x8E);
extern void isr_handler_asm_123();
idt_set_descriptor(123, isr_handler_asm_123, 0x8E);
extern void isr_handler_asm_124();
idt_set_descriptor(124, isr_handler_asm_124, 0x8E);
extern void isr_handler_asm_125();
idt_set_descriptor(125, isr_handler_asm_125, 0x8E);
extern void isr_handler_asm_126();
idt_set_descriptor(126, isr_handler_asm_126, 0x8E);
extern void isr_handler_asm_127();
idt_set_descriptor(127, isr_handler_asm_127, 0x8E);
extern void isr_handler_asm_128();
idt_set_descriptor(128, isr_handler_asm_128, 0x8E);
extern void isr_handler_asm_129();
idt_set_descriptor(129, isr_handler_asm_129, 0x8E);
extern void isr_handler_asm_130();
idt_set_descriptor(130, isr_handler_asm_130, 0x8E);
extern void isr_handler_asm_131();
idt_set_descriptor(131, isr_handler_asm_131, 0x8E);
extern void isr_handler_asm_132();
idt_set_descriptor(132, isr_handler_asm_132, 0x8E);
extern void isr_handler_asm_133();
idt_set_descriptor(133, isr_handler_asm_133, 0x8E);
extern void isr_handler_asm_134();
idt_set_descriptor(134, isr_handler_asm_134, 0x8E);
extern void isr_handler_asm_135();
idt_set_descriptor(135, isr_handler_asm_135, 0x8E);
extern void isr_handler_asm_136();
idt_set_descriptor(136, isr_handler_asm_136, 0x8E);
extern void isr_handler_asm_137();
idt_set_descriptor(137, isr_handler_asm_137, 0x8E);
extern void isr_handler_asm_138();
idt_set_descriptor(138, isr_handler_asm_138, 0x8E);
extern void isr_handler_asm_139();
idt_set_descriptor(139, isr_handler_asm_139, 0x8E);
extern void isr_handler_asm_140();
idt_set_descriptor(140, isr_handler_asm_140, 0x8E);
extern void isr_handler_asm_141();
idt_set_descriptor(141, isr_handler_asm_141, 0x8E);
extern void isr_handler_asm_142();
idt_set_descriptor(142, isr_handler_asm_142, 0x8E);
extern void isr_handler_asm_143();
idt_set_descriptor(143, isr_handler_asm_143, 0x8E);
extern void isr_handler_asm_144();
idt_set_descriptor(144, isr_handler_asm_144, 0x8E);
extern void isr_handler_asm_145();
idt_set_descriptor(145, isr_handler_asm_145, 0x8E);
extern void isr_handler_asm_146();
idt_set_descriptor(146, isr_handler_asm_146, 0x8E);
extern void isr_handler_asm_147();
idt_set_descriptor(147, isr_handler_asm_147, 0x8E);
extern void isr_handler_asm_148();
idt_set_descriptor(148, isr_handler_asm_148, 0x8E);
extern void isr_handler_asm_149();
idt_set_descriptor(149, isr_handler_asm_149, 0x8E);
extern void isr_handler_asm_150();
idt_set_descriptor(150, isr_handler_asm_150, 0x8E);
extern void isr_handler_asm_151();
idt_set_descriptor(151, isr_handler_asm_151, 0x8E);
extern void isr_handler_asm_152();
idt_set_descriptor(152, isr_handler_asm_152, 0x8E);
extern void isr_handler_asm_153();
idt_set_descriptor(153, isr_handler_asm_153, 0x8E);
extern void isr_handler_asm_154();
idt_set_descriptor(154, isr_handler_asm_154, 0x8E);
extern void isr_handler_asm_155();
idt_set_descriptor(155, isr_handler_asm_155, 0x8E);
extern void isr_handler_asm_156();
idt_set_descriptor(156, isr_handler_asm_156, 0x8E);
extern void isr_handler_asm_157();
idt_set_descriptor(157, isr_handler_asm_157, 0x8E);
extern void isr_handler_asm_158();
idt_set_descriptor(158, isr_handler_asm_158, 0x8E);
extern void isr_handler_asm_159();
idt_set_descriptor(159, isr_handler_asm_159, 0x8E);
extern void isr_handler_asm_160();
idt_set_descriptor(160, isr_handler_asm_160, 0x8E);
extern void isr_handler_asm_161();
idt_set_descriptor(161, isr_handler_asm_161, 0x8E);
extern void isr_handler_asm_162();
idt_set_descriptor(162, isr_handler_asm_162, 0x8E);
extern void isr_handler_asm_163();
idt_set_descriptor(163, isr_handler_asm_163, 0x8E);
extern void isr_handler_asm_164();
idt_set_descriptor(164, isr_handler_asm_164, 0x8E);
extern void isr_handler_asm_165();
idt_set_descriptor(165, isr_handler_asm_165, 0x8E);
extern void isr_handler_asm_166();
idt_set_descriptor(166, isr_handler_asm_166, 0x8E);
extern void isr_handler_asm_167();
idt_set_descriptor(167, isr_handler_asm_167, 0x8E);
extern void isr_handler_asm_168();
idt_set_descriptor(168, isr_handler_asm_168, 0x8E);
extern void isr_handler_asm_169();
idt_set_descriptor(169, isr_handler_asm_169, 0x8E);
extern void isr_handler_asm_170();
idt_set_descriptor(170, isr_handler_asm_170, 0x8E);
extern void isr_handler_asm_171();
idt_set_descriptor(171, isr_handler_asm_171, 0x8E);
extern void isr_handler_asm_172();
idt_set_descriptor(172, isr_handler_asm_172, 0x8E);
extern void isr_handler_asm_173();
idt_set_descriptor(173, isr_handler_asm_173, 0x8E);
extern void isr_handler_asm_174();
idt_set_descriptor(174, isr_handler_asm_174, 0x8E);
extern void isr_handler_asm_175();
idt_set_descriptor(175, isr_handler_asm_175, 0x8E);
extern void isr_handler_asm_176();
idt_set_descriptor(176, isr_handler_asm_176, 0x8E);
extern void isr_handler_asm_177();
idt_set_descriptor(177, isr_handler_asm_177, 0x8E);
extern void isr_handler_asm_178();
idt_set_descriptor(178, isr_handler_asm_178, 0x8E);
extern void isr_handler_asm_179();
idt_set_descriptor(179, isr_handler_asm_179, 0x8E);
extern void isr_handler_asm_180();
idt_set_descriptor(180, isr_handler_asm_180, 0x8E);
extern void isr_handler_asm_181();
idt_set_descriptor(181, isr_handler_asm_181, 0x8E);
extern void isr_handler_asm_182();
idt_set_descriptor(182, isr_handler_asm_182, 0x8E);
extern void isr_handler_asm_183();
idt_set_descriptor(183, isr_handler_asm_183, 0x8E);
extern void isr_handler_asm_184();
idt_set_descriptor(184, isr_handler_asm_184, 0x8E);
extern void isr_handler_asm_185();
idt_set_descriptor(185, isr_handler_asm_185, 0x8E);
extern void isr_handler_asm_186();
idt_set_descriptor(186, isr_handler_asm_186, 0x8E);
extern void isr_handler_asm_187();
idt_set_descriptor(187, isr_handler_asm_187, 0x8E);
extern void isr_handler_asm_188();
idt_set_descriptor(188, isr_handler_asm_188, 0x8E);
extern void isr_handler_asm_189();
idt_set_descriptor(189, isr_handler_asm_189, 0x8E);
extern void isr_handler_asm_190();
idt_set_descriptor(190, isr_handler_asm_190, 0x8E);
extern void isr_handler_asm_191();
idt_set_descriptor(191, isr_handler_asm_191, 0x8E);
extern void isr_handler_asm_192();
idt_set_descriptor(192, isr_handler_asm_192, 0x8E);
extern void isr_handler_asm_193();
idt_set_descriptor(193, isr_handler_asm_193, 0x8E);
extern void isr_handler_asm_194();
idt_set_descriptor(194, isr_handler_asm_194, 0x8E);
extern void isr_handler_asm_195();
idt_set_descriptor(195, isr_handler_asm_195, 0x8E);
extern void isr_handler_asm_196();
idt_set_descriptor(196, isr_handler_asm_196, 0x8E);
extern void isr_handler_asm_197();
idt_set_descriptor(197, isr_handler_asm_197, 0x8E);
extern void isr_handler_asm_198();
idt_set_descriptor(198, isr_handler_asm_198, 0x8E);
extern void isr_handler_asm_199();
idt_set_descriptor(199, isr_handler_asm_199, 0x8E);
extern void isr_handler_asm_200();
idt_set_descriptor(200, isr_handler_asm_200, 0x8E);
extern void isr_handler_asm_201();
idt_set_descriptor(201, isr_handler_asm_201, 0x8E);
extern void isr_handler_asm_202();
idt_set_descriptor(202, isr_handler_asm_202, 0x8E);
extern void isr_handler_asm_203();
idt_set_descriptor(203, isr_handler_asm_203, 0x8E);
extern void isr_handler_asm_204();
idt_set_descriptor(204, isr_handler_asm_204, 0x8E);
extern void isr_handler_asm_205();
idt_set_descriptor(205, isr_handler_asm_205, 0x8E);
extern void isr_handler_asm_206();
idt_set_descriptor(206, isr_handler_asm_206, 0x8E);
extern void isr_handler_asm_207();
idt_set_descriptor(207, isr_handler_asm_207, 0x8E);
extern void isr_handler_asm_208();
idt_set_descriptor(208, isr_handler_asm_208, 0x8E);
extern void isr_handler_asm_209();
idt_set_descriptor(209, isr_handler_asm_209, 0x8E);
extern void isr_handler_asm_210();
idt_set_descriptor(210, isr_handler_asm_210, 0x8E);
extern void isr_handler_asm_211();
idt_set_descriptor(211, isr_handler_asm_211, 0x8E);
extern void isr_handler_asm_212();
idt_set_descriptor(212, isr_handler_asm_212, 0x8E);
extern void isr_handler_asm_213();
idt_set_descriptor(213, isr_handler_asm_213, 0x8E);
extern void isr_handler_asm_214();
idt_set_descriptor(214, isr_handler_asm_214, 0x8E);
extern void isr_handler_asm_215();
idt_set_descriptor(215, isr_handler_asm_215, 0x8E);
extern void isr_handler_asm_216();
idt_set_descriptor(216, isr_handler_asm_216, 0x8E);
extern void isr_handler_asm_217();
idt_set_descriptor(217, isr_handler_asm_217, 0x8E);
extern void isr_handler_asm_218();
idt_set_descriptor(218, isr_handler_asm_218, 0x8E);
extern void isr_handler_asm_219();
idt_set_descriptor(219, isr_handler_asm_219, 0x8E);
extern void isr_handler_asm_220();
idt_set_descriptor(220, isr_handler_asm_220, 0x8E);
extern void isr_handler_asm_221();
idt_set_descriptor(221, isr_handler_asm_221, 0x8E);
extern void isr_handler_asm_222();
idt_set_descriptor(222, isr_handler_asm_222, 0x8E);
extern void isr_handler_asm_223();
idt_set_descriptor(223, isr_handler_asm_223, 0x8E);
extern void isr_handler_asm_224();
idt_set_descriptor(224, isr_handler_asm_224, 0x8E);
extern void isr_handler_asm_225();
idt_set_descriptor(225, isr_handler_asm_225, 0x8E);
extern void isr_handler_asm_226();
idt_set_descriptor(226, isr_handler_asm_226, 0x8E);
extern void isr_handler_asm_227();
idt_set_descriptor(227, isr_handler_asm_227, 0x8E);
extern void isr_handler_asm_228();
idt_set_descriptor(228, isr_handler_asm_228, 0x8E);
extern void isr_handler_asm_229();
idt_set_descriptor(229, isr_handler_asm_229, 0x8E);
extern void isr_handler_asm_230();
idt_set_descriptor(230, isr_handler_asm_230, 0x8E);
extern void isr_handler_asm_231();
idt_set_descriptor(231, isr_handler_asm_231, 0x8E);
extern void isr_handler_asm_232();
idt_set_descriptor(232, isr_handler_asm_232, 0x8E);
extern void isr_handler_asm_233();
idt_set_descriptor(233, isr_handler_asm_233, 0x8E);
extern void isr_handler_asm_234();
idt_set_descriptor(234, isr_handler_asm_234, 0x8E);
extern void isr_handler_asm_235();
idt_set_descriptor(235, isr_handler_asm_235, 0x8E);
extern void isr_handler_asm_236();
idt_set_descriptor(236, isr_handler_asm_236, 0x8E);
extern void isr_handler_asm_237();
idt_set_descriptor(237, isr_handler_asm_237, 0x8E);
extern void isr_handler_asm_238();
idt_set_descriptor(238, isr_handler_asm_238, 0x8E);
extern void isr_handler_asm_239();
idt_set_descriptor(239, isr_handler_asm_239, 0x8E);
extern void isr_handler_asm_240();
idt_set_descriptor(240, isr_handler_asm_240, 0x8E);
extern void isr_handler_asm_241();
idt_set_descriptor(241, isr_handler_asm_241, 0x8E);
extern void isr_handler_asm_242();
idt_set_descriptor(242, isr_handler_asm_242, 0x8E);
extern void isr_handler_asm_243();
idt_set_descriptor(243, isr_handler_asm_243, 0x8E);
extern void isr_handler_asm_244();
idt_set_descriptor(244, isr_handler_asm_244, 0x8E);
extern void isr_handler_asm_245();
idt_set_descriptor(245, isr_handler_asm_245, 0x8E);
extern void isr_handler_asm_246();
idt_set_descriptor(246, isr_handler_asm_246, 0x8E);
extern void isr_handler_asm_247();
idt_set_descriptor(247, isr_handler_asm_247, 0x8E);
extern void isr_handler_asm_248();
idt_set_descriptor(248, isr_handler_asm_248, 0x8E);
extern void isr_handler_asm_249();
idt_set_descriptor(249, isr_handler_asm_249, 0x8E);
extern void isr_handler_asm_250();
idt_set_descriptor(250, isr_handler_asm_250, 0x8E);
extern void isr_handler_asm_251();
idt_set_descriptor(251, isr_handler_asm_251, 0x8E);
extern void isr_handler_asm_252();
idt_set_descriptor(252, isr_handler_asm_252, 0x8E);
extern void isr_handler_asm_253();
idt_set_descriptor(253, isr_handler_asm_253, 0x8E);
extern void isr_handler_asm_254();
idt_set_descriptor(254, isr_handler_asm_254, 0x8E);
extern void isr_handler_asm_255();
idt_set_descriptor(255, isr_handler_asm_255, 0x8E);
}