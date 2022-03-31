import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateSurveyDto } from './dto/create-survey.dto';
import { UpdateSurveyDto } from './dto/update-survey.dto';

@Injectable()
export class SurveyService {
  constructor(private readonly prisma: PrismaService) {}
  create(data: CreateSurveyDto) {
    return this.prisma.survey.create({ data });
  }

  findAll() {
    return this.prisma.survey.findMany();
  }

  findOne(id: number) {
    return this.prisma.survey.findUnique({
      where: {
        id,
      },
    });
  }

  update(id: number, data: UpdateSurveyDto) {
    return this.prisma.survey.update({
      where: { id },
      data,
    });
  }

  remove(id: number) {
    return this.prisma.survey.delete({
      where: { id },
    });
  }
}
