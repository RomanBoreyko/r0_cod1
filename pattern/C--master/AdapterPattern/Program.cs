﻿namespace AdapterPattern
{
    // Пространство имен "AdapterPattern"

    internal static class Program
    {
        // Класс "Program", отвечающий за точку входа в программу

        private static void Main()
        {
            // Метод "Main", который является точкой входа в программу

            var turkey = new WildTurkey(); // Создаем экземпляр класса "WildTurkey", представляющий объект индейки, и присваиваем его переменной "turkey"

            var adapter = new TurkeyAdapter(turkey); // Создаем адаптер класса "TurkeyAdapter", передавая в его конструктор объект индейки ("turkey"), и присваиваем его переменной "adapter"

            Tester(adapter); // Вызываем метод "Tester", передавая в него адаптер ("adapter")
        }

        private static void Tester(IDuck duck)
        {
            // Метод "Tester", который принимает объект типа "IDuck"

            duck.Fly(); // Вызываем метод "Fly" на объекте, реализующем интерфейс "IDuck", чтобы имитировать полет утки

            duck.Quack(); // Вызываем метод "Quack" на объекте, реализующем интерфейс "IDuck", чтобы имитировать кряканье утки
        }
    }
}

// WildTurkey - класс, представляющий объект индейки. Этот класс реализует свои собственные методы Gobble и Fly.
// TurkeyAdapter - класс адаптера, который принимает объект индейки и адаптирует его к интерфейсу IDuck (интерфейс для утки).
// turkey - создание экземпляра класса WildTurkey, который представляет объект индейки, и присвоение его переменной turkey.
// adapter - создание экземпляра класса TurkeyAdapter, передача объекта индейки (turkey) в его конструктор для адаптации, и присвоение его переменной adapter.
// Tester(adapter) - вызов метода Tester, передача адаптера (adapter) в качестве аргумента.
// duck.Fly() - вызов метода Fly на объекте, реализующем интерфейс IDuck, чтобы имитировать полет утки.
// duck.Quack() - вызов метода Quack на объекте, реализующем интерфейс IDuck, чтобы имитировать кряканье утки.

