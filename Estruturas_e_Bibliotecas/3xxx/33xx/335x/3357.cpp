#include <bits/stdc++.h>
using namespace std;

int main()
{
    int qtdPessoas, intVolume, intCuia, indexUltimaPessoa,volumeUltimaPessoa;
    int volume, volumeD, cuia, cuiaD;
    scanf("%d %d.%d %d.%d", &qtdPessoas, &volume, &volumeD, &cuia, &cuiaD);

    vector<string> nomes(qtdPessoas);

    for (string &s : nomes)
        cin >> s;

    intVolume = (int)(volume * 10 + volumeD);
    intCuia = (int)(cuia * 10 + cuiaD);

    indexUltimaPessoa = (intVolume / intCuia) % qtdPessoas;
    volumeUltimaPessoa = (intVolume % intCuia);
    if (intVolume % intCuia == 0){
        indexUltimaPessoa = (indexUltimaPessoa + qtdPessoas -1) % qtdPessoas;
        volumeUltimaPessoa = intCuia;
    }
    cout << fixed << setprecision(1) << nomes[indexUltimaPessoa] << " " << volumeUltimaPessoa / 10 << "." << volumeUltimaPessoa % 10 << endl;
    return 0;
}