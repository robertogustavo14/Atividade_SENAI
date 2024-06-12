<?php
class Email{
    private $email;

    private function __construct(string $email){

        $this->validarEmail($email);
        $this->email = $email;
    }
    public static function retornarInstancia(string $email): self{
        return new self($email);

    }
    public function __toString(): string{
        return $this->email;

    }
    private function validarEmail(string $email): void
    {
        if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
            throw new \InvalidArgumentException(
                sprintf(
                    '"%s" não é um endereço de email valido',$email
                )
            );
        }
    }
}
class EmailTest extends PHPUnit\Framework\TestCase{
    public function testValidarTipoDaInstancia(): void
    {
        $this->assertInstanceOf(
            Email::class,
            Email::retornarInstancia('gabriel@gmail.com')
        );
    }

    public function testTestarRetornoDaInstancia(): void
    {
        $this->assertEquals(
            'gustavoroberto@gmail.com',
            Email::retornarInstancia('gustavoroberto@gmail.com')
        );
    }
    public function testRetornaExcecaoSeEmailForInvalido(): void
    {
        $this->expectException(InvalidArgumentException::class);
        Email::retornarInstancia('email_invalido.com');
    }
}


?>