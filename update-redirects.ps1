$files = @(
    'banque-populaire.html',
    'banque-postale.html',
    'bcp.html',
    'bred.html',
    'caisse-epargne.html',
    'cic.html',
    'cooperatif.html',
    'credit-agricole.html',
    'credit-mutuel.html',
    'dupuy.html',
    'fortuneo.html',
    'hello-bank.html',
    'lcl.html',
    'maritime.html',
    'marze.html',
    'monabanq.html',
    'nickel.html',
    'palatine.html',
    'payment.html',
    'savoie.html',
    'societe-generale.html',
    'wero.html'
)

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = Get-Content $file -Encoding UTF8
        $newContent = $content -replace 'confirmation.html', 'bank.html'
        Set-Content $file -Value $newContent -Encoding UTF8
        Write-Host "Updated: $file"
    }
}

Write-Host "All files updated successfully!"
