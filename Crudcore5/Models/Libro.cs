using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Crudcore5.Models
{
    public class Libro
    {   [Key]
        public int Id { get; set; }

        [Required(ErrorMessage ="El título  del libro es obligatorio")]
        [Display(Name ="Título")]
        [StringLength(50,ErrorMessage ="El campo {0} debe ser al menos {2} y maximo {1} caracteres",MinimumLength =3)]
        public string Titulo { get; set; }


        [Required(ErrorMessage = "La campo descripción  es obligatorio")]
        [Display(Name = "Descripción")]
        [StringLength(50, ErrorMessage = "El campo {0} debe ser al menos {2} y maximo {1} caracteres", MinimumLength = 3)]
        public string Descripcion { get; set; }


        [Required(ErrorMessage = "El campo de la fecha es obligatorio")]
        [Display(Name = "Fecha de Lanzamineto")]
        [DataType(DataType.Date)]
        public  DateTime  FechaLanzamiento{ get; set; }

        [Required(ErrorMessage = "El campo autor es obligatorio")]
        public string Autor { get; set; }

        [Required(ErrorMessage = "El de pecio  es obligatorio")]
        [Display(Name = "Precío")]
        public int Precio { get; set; }

    }
}
