using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace WcfService1.DataContract
{
    [DataContract]
    public class dc_ObtCtes
    {
        string cliente, nombre, delegacion;
        int id;

        [DataMember]
        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        [DataMember]
        public string Cliente
        {
            get { return cliente; }
            set { cliente = value; }
        }

        [DataMember]
        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        [DataMember]
        public string Delegacion
        {
            get { return delegacion; }
            set { delegacion = value; }
        }
    }
}