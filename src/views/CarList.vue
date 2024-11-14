<template>
  <div class="car-list">
    <h1>Listado de coches de alta gama de segunda mano</h1>
    <ul>
      <li v-for="car in cars" :key="car.id">
        <h2>{{ car.titulo }}</h2>
        <p>Marca: {{ car.marca }}</p>
        <p>Modelo: {{ car.modelo }}</p>
        <p>Kilómetros: {{ car.kms }}</p>
        <p>Precio: {{ car.precio }}</p>
      </li>
    </ul>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';

interface Car {
  id: number;
  titulo: string;
  marca: string;
  modelo: string;
  kms: number;
  precio: string;
}

export default defineComponent({
  name: 'CarList',
  data() {
    return {
      cars: [
        { id: 1, titulo: 'Coche 1', marca: 'Marca A', modelo: 'Modelo X', kms: 10000, precio: '50,000€' },
        { id: 2, titulo: 'Coche 2', marca: 'Marca B', modelo: 'Modelo Y', kms: 20000, precio: '60,000€' },
        { id: 3, titulo: 'Coche 3', marca: 'Marca C', modelo: 'Modelo Z', kms: 30000, precio: '70,000€' },
        { id: 4, titulo: 'Coche 4', marca: 'Marca D', modelo: 'Modelo W', kms: 40000, precio: '80,000€' },
        { id: 5, titulo: 'Coche 5', marca: 'Marca E', modelo: 'Modelo V', kms: 50000, precio: '90,000€' }
      ] as Car[]
    }
  }
});
</script>

<style scoped>
/* Estilos CSS para CarList */
</style>
