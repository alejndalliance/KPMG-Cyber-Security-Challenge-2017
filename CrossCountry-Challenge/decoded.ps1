function qaz9876MNB65rf {
	param(
    	[Byte[]]$data_,
    	[Byte[]]$NBM876DFS432
  	)
 
	[Byte[]]$675GHF432mnb = New-Object Byte[] $data_.Length
	$data_.CopyTo($675GHF432mnb, 0)
	
	[Byte[]]$s = New-Object Byte[] 256;
    [Byte[]]$k = New-Object Byte[] 256;
 
    for ($i = 0; $i -lt 256; $i++)
    {
        $s[$i] = [Byte]$i;
        $k[$i] = $NBM876DFS432[$i % $NBM876DFS432.Length];
    }
 
    $j = 0;
    for ($i = 0; $i -lt 256; $i++)
    {
        $j = ($j + $s[$i] + $k[$i]) % 256;
        $temp = $s[$i];
        $s[$i] = $s[$j];
        $s[$j] = $temp;
    }
 
    $i = $j = 0;
    for ($x = 0; $x -lt $675GHF432mnb.Length; $x++)
    {
        $i = ($i + 1) % 256;
        $j = ($j + $s[$i]) % 256;
        $temp = $s[$i];
        $s[$i] = $s[$j];
        $s[$j] = $temp;
        [int]$t = ($s[$i] + $s[$j]) % 256;
        $675GHF432mnb[$x] = $675GHF432mnb[$x] -bxor $s[$t];
    }
 
	return $675GHF432mnb
}

function UIAYS678213huia785A12 {
	param(
    [Parameter(
        Position=0, 
        Mandatory=$true, 
        ValueFromPipeline=$true)
	]
	[Byte[]]$Bin)
	# assume pipeline input if we don't have an array (surely there must be a better way)
	if ($bin.Length -eq 1) {$bin = @($input)}
	$return = -join ($Bin |  foreach { "{0:X2}" -f $_ })
	Write-Output $return
}

function JHG564A1q9a3j498zx {
	param(
    [Parameter(
        Position=0, 
        Mandatory=$true, 
        ValueFromPipeline=$true)
	]	
	[string]$s)
	$return = @()
	
	for ($i = 0; $i -lt $s.Length ; $i += 2)
	{
		$return += [Byte]::Parse($s.Substring($i, 2), [System.Globalization.NumberStyles]::HexNumber)
	}
	
	Write-Output $return
}
New-PSDrive -PSProvider Registry -Name HKU -Root HKEY_USERS
$get_ascii = [System.Text.Encoding]::ASCII
[Byte[]]$POI098UYT654 = $get_ascii.GetBytes("KPMG[2f2d399f0ea8844859fe5514b304733b]")
$KHJGTRED0897mnb123A87tas = 'Count'; 
$PMUHV54wUTYGC7rtas = 'Chrome';
$ZBVC87tAHJGA5j10aj98 = 'HKU:\S-1-5-20\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\' + $KHJGTRED0897mnb123A87tas;
$JHAGS7678tg4356rtafd = '';
$JHAGS7678tg4356rtafd = (Get-ItemProperty -Path $ZBVC87tAHJGA5j10aj98 -Name $PMUHV54wUTYGC7rtas).$PMUHV54wUTYGC7rtas;
$JHAGS7678tg4356rtafd = UIAYS678213huia785A12 $JHAGS7678tg4356rtafd
[Byte[]]$JHAGS7678tg4356rtafd = JHG564A1q9a3j498zx $JHAGS7678tg4356rtafd
$897ahYRRD45ref89 = qaz9876MNB65rf $JHAGS7678tg4356rtafd $POI098UYT654
[io.file]::WriteAllBytes('file2.txt',$897ahYRRD45ref89)