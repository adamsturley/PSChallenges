<#
    .SYNOPSIS
    The aim of this function is firstly to connect to a remote machine, and then output the following information

    .DESCRIPTION   
    This function solves the problem put forward by the Sept 2020 Iron Scripter challenge.
    https://ironscripter.us/a-powershell-session-challenge/

    .Example
    TBC
#>

function Get-Remoting {
    param (
    [Parameter(Mandatory=$true)]
    [String]$ComputerName,

    [Parameter(Mandatory=$true)]
    [pscredential]$Credential
    )

    New-PSSession -ComputerName $ComputerName -Credential $Credential
    Get-PSSession -ComputerName $ComputerName -Credential $Credential
}

function Export-RemotingResult {
    [CmdletBinding()]
    param (
        [Parameter(Position=0,Mandatory=$true,ValueFromPipeline)]
        $ComputerName,

        [Parameter(Position=1,Mandatory=$true)]
        $Path
    )




}
