/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181031 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLzrsDAq.aml, Thu Jan  3 10:23:36 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000084 (132)
 *     Revision         0x02
 *     Checksum         0xCE
 *     OEM ID           "hack"
 *     OEM Table ID     "spoof"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "spoof", 0x00000000)
{
    Method (_SB.PCI0.PEG0.PEGP._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x06)
        {
            "name", 
            Buffer (0x09)
            {
                "#display"
            }, 

            "IOName", 
            "#display", 
            "class-code", 
            Buffer (0x04)
            {
                 0xFF, 0xFF, 0xFF, 0xFF                           // ....
            }
        })
    }
}

