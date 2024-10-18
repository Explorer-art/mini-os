# Mini-OS

### О проекте
Mini-OS — это небольшая операционная система которую я разрабатываю в учебных целях.

### Сборка
Для сборки необходим кросс-компилятор.
```
./headers.sh
./iso.sh
```

### Дополнительно
Запустить ОС на эмуляторе QEMU:
`qemu-system-i386 -cdrom mini-os.iso`

Очистить файлы которые появились после сборки ОС (.iso образ тоже будет удалён):
`./clean.sh`
