# Autoria, referências e decisões

Base: repositório uesb-academicos/FlutterApp, commit main 9c2b8fc, branches semana1 e semana4. O histórico Git foi preservado.

Roteiros do professor consultados no Moodle em 26/10/2026:
- Semana 3, ambiente: https://moodle4.uesb.br/mod/resource/view.php?id=30135
- Semana 4, List e Map: https://moodle4.uesb.br/mod/resource/view.php?id=30850
- Semana 5, orientação a objetos: https://moodle4.uesb.br/mod/resource/view.php?id=31002
- Semana 6, assincronia: https://moodle4.uesb.br/mod/resource/view.php?id=31593

O código foi organizado e complementado com assistência do Codex (IA). Esta documentação não declara que todo o trabalho foi escrito sem assistência. O estudante precisa revisar, compreender e observar a política de uso de IA da disciplina, que ainda não foi localizada.

Adaptações técnicas:
- Os caminhos duplicados de arquivos da semana4 foram corrigidos na cópia organizada; as branches avaliadas permanecem preservadas.
- Professor estende Pessoa, e Turma recebe professor no construtor.
- A média divide pela quantidade de notas do aluno. O exemplo do roteiro divide pelo total de alunos, o que dá resultado incorreto para várias notas.
- Sem notas, a média é zero. Nota igual a seis não aprova: o roteiro exige média superior a seis.
- Matrícula repetida é rejeitada para não apagar notas existentes; ano diferente é rejeitado antes de alterar o histórico.
- A Stream emite ArgumentError para Paula e continua até Bruna, como exige a sequência do roteiro.
- Os testes assíncronos aguardam conclusão e verificam eventos e erros; callbacks sem espera podem terminar antes das verificações.

Não foram fabricados logs, notas, capturas de execução, commits retroativos ou declarações de autoria exclusiva.
