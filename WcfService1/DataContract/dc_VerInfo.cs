using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace WcfService1.DataContract
{
    [DataContract]
    public class dc_VerInfo
    {
        string opcion, titulo, tituloOriginal, autor, genero, editorial;
        int anioPublicacion;

        [DataMember]
        public string Opcion
        {
            get { return opcion; }
            set { opcion = value; }
        }

        [DataMember]
        public string Titulo
        {
            get { return titulo; }
            set { titulo = value; }
        }

        [DataMember]
        public string TituloOriginal
        {
            get { return tituloOriginal; }
            set { tituloOriginal = value; }
        }

        [DataMember]
        public string Autor
        {
            get { return autor; }
            set { autor = value; }
        }

        [DataMember]
        public string Genero
        {
            get { return genero; }
            set { genero = value; }
        }

        [DataMember]
        public string Editorial
        {
            get { return editorial; }
            set { editorial = value; }
        }

        [DataMember]
        public int AnioPublicacion
        {
            get { return anioPublicacion; }
            set { anioPublicacion = value; }
        }
    }
}