﻿<#
    .SYNOPSIS
        Create a new registry key called MyNewKey as a subkey under the key
        'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment'.
#>
Configuration Sample_RegistryResource_AddKey
{
    Import-DscResource -ModuleName 'PsDscClassResources_Dev'

    Node localhost
    {
        Registry Registry1
        {
            Key = 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\MyNewKey'
            Ensure = 'Present'
            ValueName = ''
        }
    }
}
