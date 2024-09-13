// Định nghĩa interface IAnimal
interface IAnimal {
  eat(): void;
  sleep(): void;
  fly(): void;
}

// Lớp Dog triển khai IAnimal
class Dog implements IAnimal { // Class 'Dog' incorrectly implements interface 'IAnimal'. Property 'fly' is missing in type 'Dog' but required in type 'IAnimal'.ts(2420)
  eat(): void {
    console.log("Dog is eating.");
  }

  sleep(): void {
    console.log("Dog is sleeping.");
  }
}

// Lớp Cat triển khai IAnimal
class Cat implements IAnimal { // Class 'Cat' incorrectly implements interface 'IAnimal'. Property 'fly' is missing in type 'Dog' but required in type 'IAnimal'.ts(2420)
  eat(): void {
    console.log("Cat is eating.");
  }

  sleep(): void {
    console.log("Cat is sleeping.");
  }
}

class Bird implements IAnimal {
  eat(): void {
    console.log("Bird is eating.");
  }

  sleep(): void {
    console.log("Bird is sleeping.");
  }

  fly(): void {
    console.log("Bird is sleeping.");
  }
}

// Tạo đối tượng từ lớp Dog và Cat
const dog = new Dog();
dog.eat();
dog.sleep();

const cat = new Cat();
cat.eat();
cat.sleep();

const bird = new Bird();
bird.eat();
bird.sleep();
bird.fly();
