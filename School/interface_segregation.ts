// Định nghĩa interface IAnimal
interface IAnimal {
  eat(): void;
  sleep(): void;
}

// Lớp Dog triển khai IAnimal
class Dog implements IAnimal {
  eat(): void {
    console.log("Dog is eating.");
  }

  sleep(): void {
    console.log("Dog is sleeping.");
  }
}

// Lớp Cat triển khai IAnimal
class Cat implements IAnimal {
  eat(): void {
    console.log("Cat is eating.");
  }

  sleep(): void {
    console.log("Cat is sleeping.");
  }
}

// Tạo đối tượng từ lớp Dog và Cat
const dog = new Dog();
dog.eat();
dog.sleep();

const cat = new Cat();
cat.eat();
cat.sleep();
