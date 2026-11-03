<#
==========================================================================
CONG CU PHAT HANH BAN QUYEN GT-DLONG (KEYGEN MASTER)
Tac gia: Ky su Vu Duc Long
Chuc nang: Khoa ban quyen Add-in AutoCAD theo bo mach chu (Hardware-Locked)
==========================================================================
#>

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

[System.Windows.Forms.Application]::EnableVisualStyles()

# Muoi bao mat (Phai khop 100% voi NutGiao_License.lsp)
$SALT_KEYGEN = "DLONG_KEYGEN_MASTER_KEY_2026_@!"

# Thuat toan bam dong bo voi AutoLISP (64-bit block hash)
function Get-DLHashBlock([string]$s) {
    [int]$h1 = 0x811C
    [int]$h2 = 0x27D4
    [int]$h3 = 0x5F35
    [int]$h4 = 0x1A2B
    
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($s)
    foreach ($b in $bytes) {
        $h1 = (($h1 * 33) + $b + 11) % 65536
        $h2 = (($h2 * 65) + $b + 23) % 65536
        $h3 = (($h3 * 129) + $b + 37) % 65536
        $h4 = (($h4 * 257) + $b + 59) % 65536
    }
    return ("{0:X4}-{1:X4}-{2:X4}-{3:X4}" -f $h1, $h2, $h3, $h4)
}

# Tao Form giao dien
$form = New-Object System.Windows.Forms.Form
$form.Text = "GT-DLONG LICENSE GENERATOR - VU DUC LONG"
$form.Size = New-Object System.Drawing.Size(650, 580)
$form.StartPosition = "CenterScreen"
$form.FormBorderStyle = "FixedDialog"
$form.MaximizeBox = $false
$form.BackColor = [System.Drawing.Color]::FromArgb(245, 247, 250)
$form.Font = New-Object System.Drawing.Font("Segoe UI", 10)

# Header Banner
$panelHeader = New-Object System.Windows.Forms.Panel
$panelHeader.Size = New-Object System.Drawing.Size(650, 75)
$panelHeader.BackColor = [System.Drawing.Color]::FromArgb(24, 76, 120)
$form.Controls.Add($panelHeader)

$lblTitle = New-Object System.Windows.Forms.Label
$lblTitle.Text = "BO PHAT HANH BAN QUYEN GT-DLONG"
$lblTitle.Font = New-Object System.Drawing.Font("Segoe UI", 14, [System.Drawing.FontStyle]::Bold)
$lblTitle.ForeColor = [System.Drawing.Color]::White
$lblTitle.Location = New-Object System.Drawing.Point(20, 12)
$lblTitle.AutoSize = $true
$panelHeader.Controls.Add($lblTitle)

$lblSub = New-Object System.Windows.Forms.Label
$lblSub.Text = "Khoa ban quyen theo Mainboard may tinh (Hardware-Locked Node License)"
$lblSub.Font = New-Object System.Drawing.Font("Segoe UI", 9, [System.Drawing.FontStyle]::Italic)
$lblSub.ForeColor = [System.Drawing.Color]::FromArgb(200, 220, 240)
$lblSub.Location = New-Object System.Drawing.Point(22, 42)
$lblSub.AutoSize = $true
$panelHeader.Controls.Add($lblSub)

# 1. Ma may khach gui (Machine Code)
$lblMach = New-Object System.Windows.Forms.Label
$lblMach.Text = "1. Ma may cua khach hang (Hardware ID):"
$lblMach.Location = New-Object System.Drawing.Point(30, 95)
$lblMach.AutoSize = $true
$lblMach.Font = New-Object System.Drawing.Font("Segoe UI", 10, [System.Drawing.FontStyle]::Bold)
$form.Controls.Add($lblMach)

$txtMach = New-Object System.Windows.Forms.TextBox
$txtMach.Location = New-Object System.Drawing.Point(30, 122)
$txtMach.Size = New-Object System.Drawing.Size(570, 28)
$txtMach.Font = New-Object System.Drawing.Font("Consolas", 11, [System.Drawing.FontStyle]::Bold)
$txtMach.ForeColor = [System.Drawing.Color]::FromArgb(0, 51, 102)
$form.Controls.Add($txtMach)

# 2. Ten khach hang / Don vi
$lblName = New-Object System.Windows.Forms.Label
$lblName.Text = "2. Ten khach hang / Don vi su dung:"
$lblName.Location = New-Object System.Drawing.Point(30, 160)
$lblName.AutoSize = $true
$lblName.Font = New-Object System.Drawing.Font("Segoe UI", 10, [System.Drawing.FontStyle]::Bold)
$form.Controls.Add($lblName)

$txtName = New-Object System.Windows.Forms.TextBox
$txtName.Location = New-Object System.Drawing.Point(30, 187)
$txtName.Size = New-Object System.Drawing.Size(570, 28)
$txtName.Text = "Ky su Khach Hang"
$form.Controls.Add($txtName)

# 3. Loai ban quyen (Dropdown)
$lblType = New-Object System.Windows.Forms.Label
$lblType.Text = "3. Thoi han cap phep:"
$lblType.Location = New-Object System.Drawing.Point(30, 225)
$lblType.AutoSize = $true
$lblType.Font = New-Object System.Drawing.Font("Segoe UI", 10, [System.Drawing.FontStyle]::Bold)
$form.Controls.Add($lblType)

$cboType = New-Object System.Windows.Forms.ComboBox
$cboType.DropDownStyle = "DropDownList"
$cboType.Location = New-Object System.Drawing.Point(30, 252)
$cboType.Size = New-Object System.Drawing.Size(320, 28)
[void]$cboType.Items.Add("Vinh vien (Lifetime - Khong thoi han)")
[void]$cboType.Items.Add("1 Nam (365 Ngay)")
[void]$cboType.Items.Add("Dung thu 30 Ngay (Trial)")
[void]$cboType.Items.Add("6 Thang (180 Ngay)")
$cboType.SelectedIndex = 0
$form.Controls.Add($cboType)

# Nut TAO KEY
$btnGen = New-Object System.Windows.Forms.Button
$btnGen.Text = "TAO MA KICH HOAT (GENERATE KEY)"
$btnGen.Location = New-Object System.Drawing.Point(30, 295)
$btnGen.Size = New-Object System.Drawing.Size(570, 42)
$btnGen.Font = New-Object System.Drawing.Font("Segoe UI", 11, [System.Drawing.FontStyle]::Bold)
$btnGen.BackColor = [System.Drawing.Color]::FromArgb(40, 167, 69)
$btnGen.ForeColor = [System.Drawing.Color]::White
$btnGen.FlatStyle = "Flat"
$btnGen.Cursor = [System.Windows.Forms.Cursors]::Hand
$form.Controls.Add($btnGen)

# 4. Ket qua Key
$lblKey = New-Object System.Windows.Forms.Label
$lblKey.Text = "4. Ma kich hoat (License Key) tuong ung:"
$lblKey.Location = New-Object System.Drawing.Point(30, 350)
$lblKey.AutoSize = $true
$lblKey.Font = New-Object System.Drawing.Font("Segoe UI", 10, [System.Drawing.FontStyle]::Bold)
$form.Controls.Add($lblKey)

$txtKey = New-Object System.Windows.Forms.TextBox
$txtKey.Location = New-Object System.Drawing.Point(30, 375)
$txtKey.Size = New-Object System.Drawing.Size(570, 30)
$txtKey.Font = New-Object System.Drawing.Font("Consolas", 12, [System.Drawing.FontStyle]::Bold)
$txtKey.ForeColor = [System.Drawing.Color]::FromArgb(192, 0, 0)
$txtKey.BackColor = [System.Drawing.Color]::FromArgb(255, 255, 230)
$txtKey.ReadOnly = $true
$form.Controls.Add($txtKey)

# Nut Copy Key & Copy Tin Nhan
$btnCopyKey = New-Object System.Windows.Forms.Button
$btnCopyKey.Text = "Copy Ma Key"
$btnCopyKey.Location = New-Object System.Drawing.Point(30, 420)
$btnCopyKey.Size = New-Object System.Drawing.Size(275, 38)
$btnCopyKey.BackColor = [System.Drawing.Color]::FromArgb(0, 123, 255)
$btnCopyKey.ForeColor = [System.Drawing.Color]::White
$btnCopyKey.FlatStyle = "Flat"
$btnCopyKey.Cursor = [System.Windows.Forms.Cursors]::Hand
$form.Controls.Add($btnCopyKey)

$btnCopyMsg = New-Object System.Windows.Forms.Button
$btnCopyMsg.Text = "Copy Tin Nhan Gui Zalo"
$btnCopyMsg.Location = New-Object System.Drawing.Point(325, 420)
$btnCopyMsg.Size = New-Object System.Drawing.Size(275, 38)
$btnCopyMsg.BackColor = [System.Drawing.Color]::FromArgb(108, 117, 125)
$btnCopyMsg.ForeColor = [System.Drawing.Color]::White
$btnCopyMsg.FlatStyle = "Flat"
$btnCopyMsg.Cursor = [System.Windows.Forms.Cursors]::Hand
$form.Controls.Add($btnCopyMsg)

# Footer Status
$lblStatus = New-Object System.Windows.Forms.Label
$lblStatus.Text = "San sang tao ma. Hay dan ma may cua khach hang vao o tren."
$lblStatus.Location = New-Object System.Drawing.Point(30, 475)
$lblStatus.Size = New-Object System.Drawing.Size(570, 45)
$lblStatus.ForeColor = [System.Drawing.Color]::DarkGreen
$lblStatus.Font = New-Object System.Drawing.Font("Segoe UI", 9, [System.Drawing.FontStyle]::Italic)
$form.Controls.Add($lblStatus)

# Xu ly su kien TAO KEY
$btnGen.Add_Click({
    $mCode = $txtMach.Text.Trim().ToUpper()
    if ([string]::IsNullOrWhiteSpace($mCode)) {
        [System.Windows.Forms.MessageBox]::Show("Vui long nhap Ma may cua khach hang!", "Thong bao", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Warning)
        $txtMach.Focus()
        return
    }

    # Xac dinh Expiry Tag
    $expTag = "LIFE"
    $expDesc = "Vinh vien (Lifetime)"
    if ($cboType.SelectedIndex -eq 1) {
        $expDate = (Get-Date).AddYears(1)
        $expTag = $expDate.ToString("yyyyMMdd")
        $expDesc = "Co thoi han 1 nam (den ngay " + $expDate.ToString("dd/MM/yyyy") + ")"
    } elseif ($cboType.SelectedIndex -eq 2) {
        $expDate = (Get-Date).AddDays(30)
        $expTag = $expDate.ToString("yyyyMMdd")
        $expDesc = "Dung thu 30 ngay (den ngay " + $expDate.ToString("dd/MM/yyyy") + ")"
    } elseif ($cboType.SelectedIndex -eq 3) {
        $expDate = (Get-Date).AddMonths(6)
        $expTag = $expDate.ToString("yyyyMMdd")
        $expDesc = "Co thoi han 6 thang (den ngay " + $expDate.ToString("dd/MM/yyyy") + ")"
    }

    # Tinh chu ky bao mat
    $payload = "$mCode#$expTag#$SALT_KEYGEN"
    $sig = Get-DLHashBlock $payload

    # Ghep Key
    $finalKey = "KEY-$sig-$expTag"
    $txtKey.Text = $finalKey
    $lblStatus.Text = "DA TAO THANH CONG! Ban quyen: $expDesc - Khach hang: $($txtName.Text)"
    $lblStatus.ForeColor = [System.Drawing.Color]::DarkBlue
})

# Copy Key
$btnCopyKey.Add_Click({
    if (-not [string]::IsNullOrWhiteSpace($txtKey.Text)) {
        [System.Windows.Forms.Clipboard]::SetText($txtKey.Text)
        [System.Windows.Forms.MessageBox]::Show("Da copy Ma kich hoat vao Clipboard!", "Thanh cong", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
    }
})

# Copy Tin nhan Zalo
$btnCopyMsg.Add_Click({
    if (-not [string]::IsNullOrWhiteSpace($txtKey.Text)) {
        $msg = "Kinh gui ban $($txtName.Text),`r`n`r`n" +
               "Ma kich hoat ban quyen bo cong cu GT-DLong cho may tinh cua ban la:`r`n" +
               "--> $($txtKey.Text)`r`n`r`n" +
               "[*] Thong tin ban quyen: $($lblStatus.Text)`r`n" +
               "[*] Huong dan kich hoat: Tai AutoCAD, go lenh NG_LICENSE, dan ma tren vao roi nhan Enter la xong.`r`n`r`n" +
               "Chuc ban lam viec hieu qua!`r`n" +
               "Ky su Vu Duc Long."
        [System.Windows.Forms.Clipboard]::SetText($msg)
        [System.Windows.Forms.MessageBox]::Show("Da copy toan bo noi dung tin nhan Zalo gui khach hang!", "Thanh cong", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
    }
})

# Hien thi Form
[void]$form.ShowDialog()
